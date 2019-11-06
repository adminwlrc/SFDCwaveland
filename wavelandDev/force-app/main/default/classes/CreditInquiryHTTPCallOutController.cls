/* ================================================
 * @Class Name => CreditInquirySegmentHandler
 * @author => Admin
 * @purpose=> This class will execute the HttpRequest to Equifax
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class CreditInquiryHTTPCallOutController {

    public static Boolean SYSTEMDEBUG = false;
    /* ================================================
    * @Method Name => getRequest
    * @author => Admin
    * @purpose=>
    * @created date=> 
    ================================================*/
    public static void getRequest(String serviceName, Id contactId){
        String inquiry = CreditInquirySegmentBuilder.buildInquiry(serviceName, contactId);
        String dial = CreditInquiryDialSegmentBuilder.buildDIAL(serviceName);
       
        wlrcm__HttpRequestSetting__mdt httpRequestSettings = getHttpRequestSetting(serviceName);
        Map<String, String> resultValueMap = new Map<String, String>();
        if(httpRequestSettings != NULL){
          resultValueMap = getResultValueMap(doHttpRequest(dial+inquiry,httpRequestSettings),serviceName);
        }
        if(resultValueMap.size() > 0){
           updateEquifaxRecord(resultValueMap, contactId,serviceName);
        }
        if(SYSTEMDEBUG){ 
            System.debug('Check the inquiry :: '+dial+inquiry);
        }
    }
    /* ================================================
    * @Method Name => getResultValueMap
    * @author => Admin
    * @purpose=> This method will return the map with the API names as the Key and their respective values
    * @created date=> 
    ================================================*/
    public static Map<String, String> getResultValueMap(HTTPResponse response, String serviceName){
        
        Map<String, String> resultValueMap = new Map<String, String>();
        if(response.getStatusCode() == 200 ){
            if(!response.getBody().contains(CreditInquiryHTTPCallOutConstant.CERR)){
                CreditInquirySegmentHandler.SYSTEMDEBUG = SYSTEMDEBUG;
                 resultValueMap = CreditInquirySegmentHandler.handleResult(response.getBody(), serviceName);
            }else{
                if(SYSTEMDEBUG){
                    System.debug('System responded with an Error :::'+response.getBody());
                    System.debug('System responded with an Error :::'+CreditInquiryHttpErrorHandler.handleError(CreditInquiryHTTPCallOutConstant.CERR, serviceName));
                }
                throw new CustomException('System responded with an Error ::: '+CreditInquiryHttpErrorHandler.handleError(CreditInquiryHTTPCallOutConstant.CERR, serviceName));
            }
        }else{
            if(SYSTEMDEBUG){
                System.debug('System responded with a unsuccesful Status Code :::'+response.getBody());
                System.debug('System responded with a unsuccesful Status Code :::'+CreditInquiryHttpErrorHandler.handleError(CreditInquiryHTTPCallOutConstant.CERR, serviceName));
            }
            throw new CustomException('System responded with a unsuccesful Status Code ::: '+CreditInquiryHttpErrorHandler.handleError(CreditInquiryHTTPCallOutConstant.CERR, serviceName));
        }
        if(SYSTEMDEBUG){
            System.debug('resultValueMap : '+resultValueMap);
        }
        return resultValueMap;
    }
    /* ================================================
    * @Method Name => doHttpRequest
    * @author => Admin
    * @purpose=> This method will execute the request and return the response object 
    * @created date=> 
    ================================================*/
    public static HTTPResponse doHttpRequest(String request, wlrcm__HttpRequestSetting__mdt httpRequestSettings){

        request = request.replace(CreditInquiryHTTPCallOutConstant.PLUS, CreditInquiryHTTPCallOutConstant.SPACE); 
        HttpRequest req = new HttpRequest();
        req.setEndpoint(httpRequestSettings.wlrcm__SetEndpoint__c);
        req.setMethod(httpRequestSettings.wlrcm__SetMethod__c);
        req.setHeader(httpRequestSettings.wlrcm__HeaderKey1__c,httpRequestSettings.wlrcm__HeaderValue1__c);
        String payload = httpRequestSettings.wlrcm__PayloadKey1__c+
                            EncodingUtil.urlEncode(httpRequestSettings.wlrcm__Environment__c,httpRequestSettings.wlrcm__EncodingScheme__c)+
                            httpRequestSettings.wlrcm__PayloadKey2__c+
                            EncodingUtil.urlEncode(httpRequestSettings.wlrcm__SiteId__c,httpRequestSettings.wlrcm__EncodingScheme__c)+
                            httpRequestSettings.wlrcm__PayloadKey3__c+
                            EncodingUtil.urlEncode(request,httpRequestSettings.wlrcm__EncodingScheme__c);
        req.setBody(payload);
        Http http = new Http();
        HTTPResponse response;
        try{
            response = http.send(req);
        }catch(Exception e){
            System.debug('Service is down :::'+e.getMessage());
            throw new CustomException('System is not avaialble at the moment!!!');
        }

        return response;
    }
    /* ================================================
    * @Method Name => getHttpRequestSetting
    * @author => Admin
    * @purpose=> This method queries the setting for the http request fro the custom metadata
    * @created date=> 
    ================================================*/
    public static wlrcm__HttpRequestSetting__mdt getHttpRequestSetting(String serviceName){
        wlrcm__HttpRequestSetting__mdt httpRequestSettings = [SELECT Id,Label,wlrcm__EncodingScheme__c,wlrcm__Environment__c,wlrcm__HeaderKey1__c,
                                                wlrcm__HeaderValue1__c,wlrcm__ServiceName__c,wlrcm__SetEndpoint__c,wlrcm__SetMethod__c,wlrcm__SiteId__c,
                                                wlrcm__PayloadKey1__c, wlrcm__PayloadKey2__c, wlrcm__PayloadKey3__c
                                                FROM wlrcm__HttpRequestSetting__mdt
                                                WHERE wlrcm__ServiceName__c =: serviceName
                                                LIMIT 1];
        
        return httpRequestSettings;
    }
    /* ================================================
    * @Method Name => updateEquifaxRecord
    * @author => Admin
    * @purpose=> This method will update the contact record
    * @created date=> 
    ================================================*/
    public static void updateEquifaxRecord(Map<String, String> resultValueMap, Id contactId, String serviceName){
        wlrcm__Equifax__c equifaxRecord = new wlrcm__Equifax__c();
        try{
            Map<String,Id> recordTypeMap = GenericMethods.getRecordTypeMap('wlrcm__Equifax__c');
            wlrcm__Equifax__c checkEquifaxRecordExist = checkEquifaxRecordExist(contactId,recordTypeMap.get(serviceName));
            
            equifaxRecord.wlrcm__RetrievedTime__c = System.now();
            equifaxRecord.RecordTypeId = recordTypeMap.get(serviceName); 
            for(String str : resultValueMap.keySet()){
                equifaxRecord.put(str, resultValueMap.get(str));
            }
            if(checkEquifaxRecordExist != NULL){
                equifaxRecord.Id = checkEquifaxRecordExist.Id;
                update equifaxRecord;
                System.debug('Equifax succefully updated!!!');
            }else{
                equifaxRecord.wlrcm__Patient__c = contactId;
                insert equifaxRecord;
                System.debug('Equifax succefully created!!!');
            }
        }catch(DmlException dmle){
            System.debug('There is an error while executing update on Equifax : '+dmle.getDmlMessage(0));
            throw new CustomException('There is an error while creating/updating the Equifax record :: ');
        }
    }
    /* ================================================
    * @Method Name => updateEquifaxRecord
    * @author => Admin
    * @purpose=> This method will check if there is already a Equifax record for the Service Name
    * @created date=> 
    ================================================*/
    public static wlrcm__Equifax__c checkEquifaxRecordExist(Id contactId, String recordTypeId){

        try{
            wlrcm__Equifax__c checkEquifaxRecordExist = [SELECT Id 
                                                                                            FROM wlrcm__Equifax__c 
                                                                                            WHERE wlrcm__Patient__c =: contactId 
                                                                                            AND  RecordTypeId =: recordTypeId
                                                                                            LIMIT 1];
            return checkEquifaxRecordExist;
        }catch(QueryException qe){

        }
       
        return null;
    }
}