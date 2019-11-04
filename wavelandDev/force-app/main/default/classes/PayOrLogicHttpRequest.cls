/* ================================================
 * @Class Name => PayOrLogicHttpRequest
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicHttpRequest {
    /* ================================================
    * @Method Name => main
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    public static void main(List<Id> contactIds){

        String jsonRequest = PayOrLogicRequestHandler.createJSONRequest(contactIds);
        doHttpRequest(jsonRequest);
    }
    /* ================================================
    * @Method Name => doHttpRequest
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    @future(callout=true)
    public static void doHttpRequest(String jsonRequest){
        wlrcm__HttpRequestSetting__mdt httpSetting = getHttpRequestSettings();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(httpSetting.wlrcm__SetEndpoint__c);
        req.setMethod(httpSetting.wlrcm__SetMethod__c);
        req.setHeader(httpSetting.wlrcm__HeaderKey1__c, httpSetting.wlrcm__HeaderValue1__c);
        req.setHeader(httpSetting.wlrcm__HeaderKey2__c, httpSetting.wlrcm__HeaderValue2__c);
        req.setBody(jsonRequest);
        Http http = new Http();
        HTTPResponse res;
        try{
            res = http.send(req);
            responseHandler(res);
        }catch(Exception e){
            System.debug('There is a problem while doing http request : '+ e.getMessage() + ' StackString : '+e.getStackTraceString());
            updateTransactionRecord((Map<String, Object>)System.JSON.deserializeUntyped(jsonRequest),PayOrLogicConstants.FAILED);
        }
    }
    /* ================================================
    * @Method Name => responseHandler
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    public static  void  responseHandler(HTTPResponse res){
        
        Map<String, Object> responseObj;
        if(res.getStatusCode() == 200){
            responseObj = (Map<String, Object>)System.JSON.deserializeUntyped(res.getBody());
            if(!responseObj.containsKey(PayOrLogicConstants.USEREXCEPTIONMESSAGE)){
                PayOrLogicResponseHandler.handleResponse(responseObj);
            }else{
                //TODO : httpRequestErrorHandler(responseObj); 
                System.debug('System response with Exception Message : '+responseObj.get(PayOrLogicConstants.USEREXCEPTIONMESSAGE));
            }
        }else{
               System.debug('System response with bad Status Code: '+res.getStatusCode() + ' : '+res.getBody());
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
    public static  void updateTransactionRecord(Map<String, Object> responseObj, String status){
        
        wlrcm__TransactionTracker__c transactionRecord = new wlrcm__TransactionTracker__c();
        transactionRecord.wlrcm__Status__c = status;
        transactionRecord.Id = (Id)responseObj.get(PayOrLogicConstants.TRANSACTIONID);
        update transactionRecord;
    }
}
