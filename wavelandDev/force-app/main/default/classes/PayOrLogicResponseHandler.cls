/* ================================================
 * @Class Name => PayOrLogicResponseHandler
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicResponseHandler {
    public static String json = '{\"TransactionId\":\"ABC123347\",\"ResponseDate\":\"2019-10-24 23:00:29\",\"Status\":\"Complete\",\"TechnicalExceptionMessage\":\"\",\"Individuals\":[{\"Firstname\":\"Shelly\",\"Lastname\":\"longs\",\"Gender\":\"F\",\"DOB\":\"1980-01-01\",\"SSN\":\"333333333\",\"Address1\":\"8566 E Cheers Av\",\"City\":\"Fantasy Island\",\"State\":\"IL\",\"Zip\":\"60750\",\"VisitNumber\":\"BW1I014116000936\",\"MRN\":\"1246293\",\"ClientId\":\"ABC123\",\"ServiceBeginDate\":\"2014-06-01\",\"ServiceEndDate\":\"2014-06-01\",\"PatientProcessType\":\"Emergency\",\"TotalCharges\":\"1394.00\",\"applicantId\":4595,\"Guarantor\":{\"Firstname\":\"Bill\",\"Lastname\":\"Aalevelg\",\"Gender\":\"M\",\"DOB\":\"1980-02-04\",\"SSN\":\"\",\"Address1\":\"8566 E Cheers Av\",\"City\":\"Fantasy Island\",\"State\":\"IL\",\"Zip\":\"60750\",\"applicantId\":4594},\"InsuranceFinder\":{\"Status\":\"Complete\"}}],\"Workflows\":[],\"PayorsWithTemporaryErrors\":[],\"PayorsWithTemporaryErrorsCount\":0}';
	
    /* ================================================
    * @Method Name => handleResponse
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static void handleResponse(String response){
        Map<String, Object> responseMap = (Map<String, Object>)System.JSON.deserializeUntyped(json);
        System.debug('Check responseMap : '+responseMap);
    }
    /* ================================================
    * @Method Name => getElementWithFieldMapping
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static Map<String, Map<String, String>> getElementWithFieldMapping(){
        Map<String, Map<String, String>> elementWithFieldMapping = new Map<String, Map<String, String>>();
        for(wlrcm__PayOrLogicJSONResponseFieldMapping__mdt el : [SELECT Id, wlrcm__ElementName__c, wlrcm__FieldName__c, wlrcm__NodeName__c FROM wlrcm__PayOrLogicJSONResponseFieldMapping__mdt LIMIT 50000]){
            if(elementWithFieldMapping.containsKey(el.wlrcm__NodeName__c)){
                elementWithFieldMapping.get(el.wlrcm__NodeName__c).put(el.wlrcm__ElementName__c,el.wlrcm__FieldName__c);
            }else{
                elementWithFieldMapping.put(el.wlrcm__NodeName__c, new Map<String, String>{el.wlrcm__ElementName__c => el.wlrcm__FieldName__c});
            }
        }
        System.debug('Check 1 : '+elementWithFieldMapping );
        return elementWithFieldMapping;
    }

    /* ================================================
    * @Method Name => upsertObject
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static void upsertObject(List<Object> individualNode){
        List<wlrcm__PayOrLogic__c> upsertList = new List<wlrcm__PayOrLogic__c>();
        for(Object obj : individualNode){

        }

    }

}
