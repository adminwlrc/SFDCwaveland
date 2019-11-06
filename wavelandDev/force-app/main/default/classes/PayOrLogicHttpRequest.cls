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
        PayOrLogicCreateJsonRequest.SYSTEMDEBUG = SYSTEMDEBUG;
        doHttpRequest(PayOrLogicCreateJsonRequest.createJSONRequest(contactIds));
    }
    /* ================================================
    * @Method Name => doHttpRequest
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    @future(callout=true)
    public static void doHttpRequest(Map<String, String> jsonRequest){
        wlrcm__HttpRequestSetting__mdt httpSetting = getHttpRequestSettings();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(httpSetting.wlrcm__SetEndpoint__c);
        req.setMethod(httpSetting.wlrcm__SetMethod__c);
        req.setHeader(httpSetting.wlrcm__HeaderKey1__c, httpSetting.wlrcm__HeaderValue1__c);
        req.setHeader(httpSetting.wlrcm__HeaderKey2__c, httpSetting.wlrcm__HeaderValue2__c);
        req.setBody(jsonRequest.get(PayOrLogicConstants.JSONREQUEST));
        Http http = new Http();
        try{
           checkResponseStatusCode(http.send(req), jsonRequest.get(PayOrLogicConstants.TRANSACTIONID));
        }catch(Exception e){
            if(SYSTEMDEBUG){
                System.debug('External system is not responding : '+ e.getMessage() + ' Line Number : '+e.getLineNumber());
            }
            updateTransactionRecord(null,PayOrLogicConstants.FAILED, jsonRequest.get(PayOrLogicConstants.TRANSACTIONID));
        }
    } 
     /* ================================================
    * @Method Name => checkStatusCode()
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
     public static  void  checkResponseStatusCode(HTTPResponse response, String transactionId){

        if(response.getStatusCode() == 200){
            if(SYSTEMDEBUG){
                System.debug('System send this response : '+ response.getBody());
            }
            responseHandler(response, transactionId);
        }else{
            if(SYSTEMDEBUG){
                System.debug('System response with bad Status Code: '+response.getStatusCode() + ' : '+response.getBody());
            }
            throw new CustomException('System responded with bad Status Code  : '+response.getStatusCode());
        }
     }
    /* ================================================
    * @Method Name => responseHandler
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    public static void responseHandler(HTTPResponse response, String transactionId){
        
        Map<String, Object> responseObj = (Map<String, Object>)System.JSON.deserializeUntyped(response.getBody());
        if(!responseObj.containsKey(PayOrLogicConstants.USEREXCEPTIONMESSAGE)){
            PayOrLogicResponseHandler.handleResponse(responseObj); 
        }else{
            if(SYSTEMDEBUG){
                System.debug('System responded with Exception Message : '+responseObj.get(PayOrLogicConstants.USEREXCEPTIONMESSAGE));
            }
            updateTransactionRecord(responseObj, PayOrLogicConstants.FAILED, transactionId);
            throw new CustomException('System responded with Exception Message : '+responseObj.get(PayOrLogicConstants.USEREXCEPTIONMESSAGE));
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
        if(responseObj != NULL){
            if(responseObj.containsKey(PayOrLogicConstants.USEREXCEPTIONMESSAGE)){
                transactionRecord.wlrcm__UserExceptionMessage__c = (String)responseObj.get(PayOrLogicConstants.USEREXCEPTIONMESSAGE);
            }
        }
        
        update transactionRecord;
    }
}