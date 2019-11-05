/* ================================================
 * @Class Name => PayOrLogicResponseHandler
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicResponseHandler {
    /* ================================================
    * @Method Name => handleResponse
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static void handleResponse(Map<String, Object> responseObj){
     
        Map<String, Map<String, String>> elementWithFieldMapping = getElementWithFieldMapping();
        createIndividuals(responseObj, elementWithFieldMapping);
    }
    /* ================================================
    * @Method Name => createIndividuals
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static void createIndividuals(Map<String, Object> responseObj, Map<String, Map<String, String>> elementWithFieldMapping){
        
        List<Object> individualObjs = (List<Object>)responseObj.get(PayOrLogicConstants.INDIVIDUALS);
        List<wlrcm__PayOrLogic__c> payOrLogicRecords = new List<wlrcm__PayOrLogic__c>();
        Map<String, String> individualMapping = elementWithFieldMapping.get(PayOrLogicConstants.INDIVIDUALS);
        Map<String, String> guarantorMapping = elementWithFieldMapping.get(PayOrLogicConstants.GUARANTOR);
        Map<String, String> insuranceFinderMapping = elementWithFieldMapping.get(PayOrLogicConstants.INSURANCEFINDER);
        wlrcm__PayOrLogic__c payOrLogicRecord;
        Set<String> visitNumbers = new Set<String>();
        for(Object indObj : individualObjs){
            payOrLogicRecord = new wlrcm__PayOrLogic__c();
            Map<String,Object> individualObj = (Map<String,Object>)indObj;
            Map<String,Object> guarantorObj = (Map<String,Object>)individualObj.get(PayOrLogicConstants.GUARANTOR);
            Map<String,Object> insuranceFinderObj = (Map<String,Object>)individualObj.get(PayOrLogicConstants.INSURANCEFINDER);
            createIndividualsHelper(payOrLogicRecord, individualObj, individualMapping);
            createIndividualsHelper(payOrLogicRecord, guarantorObj, guarantorMapping);
            createIndividualsHelper(payOrLogicRecord, insuranceFinderObj, insuranceFinderMapping);
            visitNumbers.add(payOrLogicRecord.wlrcm__VisitNumber__c);
            payOrLogicRecord.wlrcm__TransactionId__c = (String)responseObj.get(PayOrLogicConstants.TRANSACTIONID);
            payOrLogicRecord.wlrcm__ResponseDate__c = (String)responseObj.get(PayOrLogicConstants.RESPONSEDATE);
            payOrLogicRecord.wlrcm__TransactionTracker__c = (String)responseObj.get(PayOrLogicConstants.TRANSACTIONID);
            payOrLogicRecord.wlrcm__Status__c = (String)responseObj.get('Status');
            payOrLogicRecord.wlrcm__TechnicalExceptionMessage__c = (String)responseObj.get(PayOrLogicConstants.TECHNICALEXCEPTIONMESSAGE);
            payOrLogicRecords.add(payOrLogicRecord);
        }
        if(payOrLogicRecords != NULL){
            createPayOrLogicRecords(payOrLogicRecords, visitNumbers, responseObj);
        }
        
    }
    /* ================================================
    * @Method Name => createIndividualsHelper
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    public static  wlrcm__PayOrLogic__c  createIndividualsHelper(wlrcm__PayOrLogic__c payOrLogicRecord, Map<String,Object> obj, Map<String, String> fieldMapping){
        
        for(String str : fieldMapping.keySet()){
            payOrLogicRecord.put(fieldMapping.get(str), String.valueOf(obj.get(str)));
        }
        return payOrLogicRecord;
    }
    /* ================================================
    * @Method Name => createPayOrLogicRecords
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    public static  void  createPayOrLogicRecords(List<wlrcm__PayOrLogic__c> payOrLogicRecords, Set<String> visitNumbers, Map<String, Object> responseObj){

        List<wlrcm__PayOrLogic__c>payOrLogicRecs = new List<wlrcm__PayOrLogic__c>();
        Map<String, Id> scopeContacts = new Map<String, Id>();
        for(Contact c : [SELECT Id, wlrcm__VisitNumber__c FROM Contact WHERE wlrcm__VisitNumber__c IN : visitNumbers]){
            scopeContacts.put(c.wlrcm__VisitNumber__c, c.Id);
        }
        for(wlrcm__PayOrLogic__c pol :payOrLogicRecords ){
            pol.wlrcm__Patient__c = scopeContacts.get(pol.wlrcm__VisitNumber__c);
            payOrLogicRecs.add(pol);
        }
        insert payOrLogicRecs;
        PayOrLogicHttpRequest.updateTransactionRecord(responseObj, PayOrLogicConstants.COMPLETED, (Id)responseObj.get(PayOrLogicConstants.TRANSACTIONID));
    }
    /* ================================================
    * @Method Name => getScopeContacts
    * @author => Admin
    * @purpose=> This method 
    * @created date=> 
    ================================================*/
    public static  Map<String, Id>  getScopeContacts(Set<String> visitNumberss){
        
        Map<String, Id>  scopeContacts = new Map<String, Id>();
        for(Contact c : [SELECT Id, wlrcm__VisitNumber__c FROM Contact WHERE wlrcm__VisitNumber__c IN : visitNumberss]){
            scopeContacts.put(c.wlrcm__VisitNumber__c, c.Id);
        }
         return scopeContacts;
        
    }
     /* ================================================
    * @Method Name => getElementWithFieldMapping
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static Map<String, Map<String, String>> getElementWithFieldMapping(){
        
        Map<String, Map<String, String>> elementWithFieldMapping = new Map<String, Map<String, String>>();
        for(wlrcm__PayOrLogicJSONResponseFieldMapping__mdt el : [SELECT Id, wlrcm__ElementName__c, wlrcm__FieldName__c, wlrcm__NodeName__c 
                                                                                                    FROM wlrcm__PayOrLogicJSONResponseFieldMapping__mdt 
                                                                                                    LIMIT 50000]){
            if(elementWithFieldMapping.containsKey(el.wlrcm__NodeName__c)){
                elementWithFieldMapping.get(el.wlrcm__NodeName__c).put(el.wlrcm__ElementName__c,el.wlrcm__FieldName__c);
            }else{
                elementWithFieldMapping.put(el.wlrcm__NodeName__c, new Map<String, String>{el.wlrcm__ElementName__c => el.wlrcm__FieldName__c});
            }
        }
        return elementWithFieldMapping;
    }
}