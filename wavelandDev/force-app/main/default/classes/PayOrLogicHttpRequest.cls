/* ================================================
 * @Class Name => PayOrLogicHttpRequest
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicHttpRequest {
    public static Boolean SYSTEMDEBUG = false;
    /* ================================================
    * @Method Name => main
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    public static void main(List<Id> contactIds){

        if(SYSTEMDEBUG){
            PayOrLogicRequestHandler.SYSTEMDEBUG = true;
            doHttpRequest(PayOrLogicRequestHandler.createJSONRequest(contactIds), true);
        }else{
            doHttpRequest(PayOrLogicRequestHandler.createJSONRequest(contactIds), false);
        }
        
    }
    /* ================================================
    * @Method Name => doHttpRequest
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    @future(callout=true)
    public static void doHttpRequest(Map<String, String> jsonRequest, Boolean systemDebug){
        wlrcm__HttpRequestSetting__mdt httpSetting = getHttpRequestSettings();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(httpSetting.wlrcm__SetEndpoint__c);
        req.setMethod(httpSetting.wlrcm__SetMethod__c);
        req.setHeader(httpSetting.wlrcm__HeaderKey1__c, httpSetting.wlrcm__HeaderValue1__c);
        req.setHeader(httpSetting.wlrcm__HeaderKey2__c, httpSetting.wlrcm__HeaderValue2__c);
        req.setBody(jsonRequest.get(PayOrLogicConstants.JSONREQUEST));
        Http http = new Http();
        HTTPResponse res;
        try{
            res = http.send(req);
            if(systemDebug){
                responseHandler(res, true);
            }else{
                responseHandler(res, false);
            }
        }catch(Exception e){
            if(systemDebug){
                System.debug('There is a problem while doing http request : '+ e.getMessage() + ' Line Number : '+e.getLineNumber());
            }
            updateTransactionRecord((Map<String, Object>)System.JSON.deserializeUntyped(res.getBody()),PayOrLogicConstants.FAILED, jsonRequest.get(PayOrLogicConstants.TRANSACTIONID));
        }
    }
    /* ================================================
    * @Method Name => responseHandler
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    public static  void  responseHandler(HTTPResponse res, Boolean systemDebug){
        System.debug('Check responseHandler : '+ systemDebug);
        Map<String, Object> responseObj;  
        if(res.getStatusCode() == 200){
            if(systemDebug){
                System.debug('System send this response : '+ res.getBody());
                // sendEmail.sendDebugEmail('cgarces@wavelandrcm.com', 'Salesforce Support', 'JSON RESPONSE', res.getBody());
            }
            responseObj = (Map<String, Object>)System.JSON.deserializeUntyped(res.getBody());
            if(!responseObj.containsKey(PayOrLogicConstants.USEREXCEPTIONMESSAGE)){
                PayOrLogicResponseHandler.handleResponse(responseObj);
            }else{
                throw new CustomException('System responded with Exception Message : '+responseObj.get(PayOrLogicConstants.USEREXCEPTIONMESSAGE));
            }
        }else{
            if(SYSTEMDEBUG){
               System.debug('System response with bad Status Code: '+res.getStatusCode() + ' : '+res.getBody());
            }
            throw new CustomException('System responded with bad Status Code  : '+res.getStatusCode());
        }
    }
    /* ================================================
    * @Method Name => getHttpRequestSettings
    * @author => Admin
    * @purpose=> This method
    * @created date=> 
    ================================================*/
    public static  wlrcm__HttpRequestSetting__mdt getHttpRequestSettings(){
        
        wlrcm__HttpRequestSetting__mdt httpSetting = [SELECT Id, wlrcm__HeaderKey1__c, wlrcm__HeaderKey2__c, wlrcm__HeaderValue1__c, wlrcm__HeaderValue2__c,
                                                                                wlrcm__SetEndpoint__c, wlrcm__SetMethod__c
                                                                                FROM wlrcm__HttpRequestSetting__mdt 
                                                                                WHERE ServiceName__c = : PayOrLogicConstants.PAYORLOGIC
                                                                                LIMIT 1];
        return httpSetting;
    }
    /* ================================================
    * @Method Name => updateTransactionRecord 
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    public static  void updateTransactionRecord(Map<String, Object> responseObj, String status, Id transactionId){
        
        wlrcm__TransactionTracker__c transactionRecord = new wlrcm__TransactionTracker__c();
        transactionRecord.wlrcm__Status__c = status;
        transactionRecord.Id = transactionId;
        if(responseObj.containsKey(PayOrLogicConstants.USEREXCEPTIONMESSAGE)){
            transactionRecord.wlrcm__UserExceptionMessage__c = (String)responseObj.get(PayOrLogicConstants.USEREXCEPTIONMESSAGE);
        }
        update transactionRecord;
    }
}
