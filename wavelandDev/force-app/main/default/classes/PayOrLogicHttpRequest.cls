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
    * @purpose=> This method construct JSON
    * @created date=> 
    ================================================*/
    public static void main(List<Id> contactIds){
        String jsonRequest = PayOrLogicRequestHandler.createJSONRequest(contactIds);
    }
    /* ================================================
    * @Method Name => doHttpRequest
    * @author => Admin
    * @purpose=> This method construct JSON
    * @created date=> 
    ================================================*/
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
        Map<String, Object> responseObj;
        try{
            res = http.send(req);
            if(res.getStatusCode() == 200){
                responseObj = (Map<String, Object>)System.JSON.deserializeUntyped(res.getBody());
                if(!responseObj.containsKey('UserExceptionMessage')){
                    PayOrLogicResponseHandler.handleResponse(responseObj);
                }else{
                    httpRequestErrorHandler(responseObj);
                    System.debug('There is an error with the request : '+responseObj.get('UserExceptionMessage'));
                }
            }else{
                // TODO
            }
        }catch(Exception e){
            // TODO
        }
    }
    /* ================================================
    * @Method Name => getHttpRequestSettings
    * @author => Admin
    * @purpose=> This method construct JSON
    * @created date=> 
    ================================================*/
    public static  wlrcm__HttpRequestSetting__mdt getHttpRequestSettings(){
        wlrcm__HttpRequestSetting__mdt httpSetting = [SELECT Id, wlrcm__HeaderKey1__c, wlrcm__HeaderKey2__c, wlrcm__HeaderValue1__c, wlrcm__HeaderValue2__c,
                                                                                wlrcm__SetEndpoint__c, wlrcm__SetMethod__c
                                                                                FROM wlrcm__HttpRequestSetting__mdt 
                                                                                WHERE ServiceName__c = 'PayOrLogic'
                                                                                LIMIT 1];
        return httpSetting;
    }
    /* ================================================
    * @Method Name => doHttpRequest
    * @author => Admin
    * @purpose=> This method construct JSON
    * @created date=> 
    ================================================*/
    public static  void httpRequestErrorHandler(Map<String, Object> responseObj){


    }
    //{ExceptionType=Fatal, UserExceptionMessage=A request with the supplied transactionId of :ABC123347 has already been completed for this company.}
    public static String json = '{ '+
		'   \"productData\":{ '+
		'      \"TransactionId\":\"ABC1233470\",'+
		'      \"RequestingSoftware\":\"PL Portal\",'+
		'      \"RequestDate\":\"3/30/2015 12:20:20\",'+
		'      \"Individuals\":[ '+
		'         { '+
		'            \"Firstname\":\"Shelly\",'+
		'            \"Lastname\":\"longs\",'+
		'            \"Gender\":\"F\",'+
		'            \"DOB\":\"1/1/1980\",'+
		'            \"SSN\":\"333333333\",'+
		'            \"Address1\":\"8566 E Cheers Av\",'+
		'            \"City\":\"Fantasy Island\",'+
		'            \"State\":\"IL\",'+
		'            \"Zip\":\"60750\",'+
		'            \"VisitNumber\":\"BW1I014116000936\",'+
		'            \"MRN\":\"1246293\",'+
		'            \"SubscriberId\":\"2848392ML\",'+
		'            \"ClientId\":\"ABC123\",'+
		'            \"PracticeLocation\":\"OH\",'+
		'            \"ServiceBeginDate\":\"6/1/2014\",'+
		'            \"ServiceEndDate\":\"6/1/2014\",'+
		'            \"PatientProcessType\":\"Emergency\",'+
		'            \"TotalCharges\":\"1394.00\",'+
		'            \"Guarantor\":{ '+
		'               \"Firstname\":\"Bill\",'+
		'               \"Lastname\":\"Aalevelg\",'+
		'               \"Gender\":\"M\",'+
		'               \"DOB\":\"2/4/1980\",'+
		'               \"Address1\":\"8566 E Cheers Av\",'+
		'               \"City\":\"Fantasy Island\",'+
		'               \"State\":\"IL\",'+
		'               \"Zip\":\"60750\",'+
		'               \"Employer\":\"ABC Company\"'+
		'            }'+
		'         }'+
		'      ],'+
		'      \"Demographic\":{ '+
		'         \"IncludeCredit\":\"No\"'+
		'      },'+
		'      \"InsuranceFinder\":{ '+
		'         \"CallbackURL\":\"None\"'+
		'      }'+
		'   }'+
		'}';

}
