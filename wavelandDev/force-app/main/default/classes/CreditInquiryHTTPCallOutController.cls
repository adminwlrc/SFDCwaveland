/**
* @Description: This class will execute the HttpRequest to Equifax
* @author: Admin
* @version: 1.0
* @since: 08/25/2019
*/
public with sharing class CreditInquiryHTTPCallOutController {

    public static Boolean SYSTEMDEBUG = false;
    private final static String SPACE = ' ';
    private final static String PLUS = '+';
    private final static String CERR = 'CERR';
    /**
    * @Description: Main
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static void getRequest(String serviceName, Id contactId){
        String inquiry = CreditInquirySegmentBuilder.buildInquiry(serviceName, contactId);
        String dial = CreditInquiryDialSegmentBuilder.buildDIAL(serviceName);
        if(SYSTEMDEBUG){ 
            System.debug('Check the inquiry :: '+dial+inquiry);
        }
        wlrcm__HttpRequestSetting__mdt httpRequestSettings = getHttpRequestSetting(serviceName);
        Map<String, String> resultValueMap = new Map<String, String>();
        if(httpRequestSettings != NULL){
          resultValueMap = getResultValueMap(doHttpRequest(dial+inquiry,httpRequestSettings),serviceName);
        }
        if(resultValueMap.size() > 0){
           updateDemographicRecord(resultValueMap, contactId,serviceName);
        }
    }
    /**
    * @Description: This method will return the map with the API names as the Key and their respective values
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static Map<String, String> getresultValueMap(HTTPResponse response, String serviceName){
        
        Map<String, String> resultValueMap = new Map<String, String>();
        if(response.getStatusCode() == 200 && !response.getBody().contains(CERR)){
            CreditInquirySegmentHandler.SYSTEMDEBUG = SYSTEMDEBUG;
            resultValueMap = CreditInquirySegmentHandler.handleResult(response.getBody(), serviceName);
        }else{
            if(SYSTEMDEBUG){
                System.debug('There is an error while handling reponse :::'+response.getBody());
                System.debug('There is an error while handling reponse :::'+CreditInquiryHttpErrorHandler.handleError(cerr, serviceName));
            }
            throw new CustomException('There is an error while handling reponse :: '+CreditInquiryHttpErrorHandler.handleError(cerr, serviceName));
        }
        if(SYSTEMDEBUG){
            System.debug('resultValueMap : '+resultValueMap);
        }
        return resultValueMap;
    }
    /**
    * @Description: This method will execute the request and return the response object 
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static HTTPResponse doHttpRequest(String request, wlrcm__HttpRequestSetting__mdt httpRequestSettings){

        request = request.replace(PLUS, SPACE); 
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
            throw new CustomException('External service is not working!!!');
        }

        return response;
    }
    /**
    * @Description: This method queries the setting for the http request fro the custom metadata
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static wlrcm__HttpRequestSetting__mdt getHttpRequestSetting(String serviceName){
        wlrcm__HttpRequestSetting__mdt httpRequestSettings = [SELECT Id,Label,wlrcm__EncodingScheme__c,wlrcm__Environment__c,wlrcm__HeaderKey1__c,
                                                wlrcm__HeaderValue1__c,wlrcm__ServiceName__c,wlrcm__SetEndpoint__c,wlrcm__SetMethod__c,wlrcm__SiteId__c,
                                                wlrcm__PayloadKey1__c, wlrcm__PayloadKey2__c, wlrcm__PayloadKey3__c
                                                FROM wlrcm__HttpRequestSetting__mdt
                                                WHERE wlrcm__ServiceName__c =: serviceName
                                                LIMIT 1];
        
        return httpRequestSettings;
    }
    
    
    /**
    * @Description: This method will update the contact record
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static void updateDemographicRecord(Map<String, String> resultValueMap, Id contactId, String serviceName){
        wlrcm__Equifax__c demographicRecord = new wlrcm__Equifax__c();
        try{
            Map<String,Id> recordTypeMap = GenericMethods.getRecordTypeMap('wlrcm__Equifax__c');
            wlrcm__Equifax__c checkDemographicRecordExist = checkDemographicRecordExist(contactId,recordTypeMap.get(serviceName));
            
            demographicRecord.wlrcm__RetrievedTime__c = System.now();
            demographicRecord.RecordTypeId = recordTypeMap.get(serviceName); 
            for(String str : resultValueMap.keySet()){
                demographicRecord.put(str, resultValueMap.get(str));
            }
            if(checkDemographicRecordExist != NULL){
                demographicRecord.Id = checkDemographicRecordExist.Id;
                update demographicRecord;
                System.debug('Demographic succefully updated!!!');
            }else{
                demographicRecord.wlrcm__Patient__c = contactId;
                insert demographicRecord;
                System.debug('Demographic succefully created!!!');
            }
        }catch(DmlException dmle){
            System.debug('There is an error while executing update on Demographic : '+dmle.getDmlMessage(0));
            throw new CustomException('There is an error while creating/updating the Demographic record :: ');
        }
    }
    /**
    * @Description: This method will check if there is already a demographic record for the Service Name
    * @version: 1.0
    * @since: 08/25/2019
    *
    **/
    public static wlrcm__Equifax__c checkDemographicRecordExist(Id contactId, String recordTypeId){

        try{
            wlrcm__Equifax__c checkDemographicRecordExist = [SELECT Id 
                                                                    FROM wlrcm__Equifax__c 
                                                                    WHERE wlrcm__Patient__c =: contactId 
                                                                    AND  RecordTypeId =: recordTypeId
                                                                    LIMIT 1];
            return checkDemographicRecordExist;
        }catch(QueryException qe){

        }
       
        return null;
    }
}