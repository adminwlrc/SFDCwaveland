  /* ================================================
 * @Class Name => PayOrLogicCreateJsonRequest
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicCreateJsonRequest {

    public static Boolean SYSTEMDEBUG = false;
    /* ================================================
    * @Method Name => createJSONRequest
    * @author => Admin
    * @purpose=> This method construct JSON
    * @created date=> 
    ================================================*/
    public static Map<String, String> createJSONRequest(List<Id> contactIds){
        
        Map<String,List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> nodeElementAndFieldAPI = getNodeElementAndFieldAPI();
        List<Contact> individuals = getContacts(contactIds , nodeElementAndFieldAPI);
        Map<String, Object> jsonObject = new Map<String, Object>();
        Id transactionId = createTransactionTracker(contactIds);
        Map<String, Object> productObject = getProductObject(nodeElementAndFieldAPI.get(PayOrLogicConstants.PRODUCTDATA), transactionId);
        List<Map<String, Object>> individualObjects = getIndividualObjects(individuals, nodeElementAndFieldAPI);
        productObject.put(PayOrLogicConstants.INDIVIDUALS, individualObjects);
        Map<String, Object> demographicObject = getDemographicObject(nodeElementAndFieldAPI.get(PayOrLogicConstants.DEMOGRAPHIC));
        productObject.put(PayOrLogicConstants.DEMOGRAPHIC, demographicObject);
        Map<String, Object> insuranceFinderObject = getinsuranceFinderObject(nodeElementAndFieldAPI.get(PayOrLogicConstants.INSURANCEFINDER));
        productObject.put(PayOrLogicConstants.INSURANCEFINDER, insuranceFinderObject);
        jsonObject.put(PayOrLogicConstants.PRODUCTDATA, productObject);
        if(SYSTEMDEBUG){
            System.debug('createJSONRequest : '+System.JSON.serializePretty(jsonObject));
        }
        Map<String, String> jsonRequest = new Map<String, String>{PayOrLogicConstants.JSONREQUEST => System.JSON.serializePretty(jsonObject), PayOrLogicConstants.TRANSACTIONID =>transactionId};
        
        return jsonRequest;
    }
    /* ================================================
    * @Method Name => getProductObject
    * @author => Admin
    * @purpose=> This method construct the productData node in the JSON request.  
    * @created date=> 
    ================================================*/
    public static Map<String, Object> getProductObject(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> nodeElementAndFieldAPI, Id transactionId){
       
        Map<String, Object> productObject = new Map<String, Object>();
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt obj : nodeElementAndFieldAPI){
            if(obj.wlrcm__ElementName__c ==  PayOrLogicConstants.REQUESTDATE){
                productObject.put( obj.wlrcm__ElementName__c, Datetime.now().format(PayOrLogicConstants.DATEFORMAT));
            }
            if(obj.wlrcm__ElementName__c ==  PayOrLogicConstants.TRANSACTIONID){
                productObject.put(obj.wlrcm__ElementName__c, transactionId);
            }
            if(obj.wlrcm__ElementName__c ==  PayOrLogicConstants.REQUESTINGSOFTWARE){
                productObject.put(obj.wlrcm__ElementName__c, obj.wlrcm__Value__c);
            }
        }
        return productObject;
    }
    /* ================================================
    * @Method Name => getIndividualObjects
    * @author => Admin
    * @purpose=> This method will construct the JSON Indivvidual objects
    * @created date=> 
    ================================================*/
    public static  List<Map<String, Object>> getIndividualObjects( List<Contact> individuals, Map<String,List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> nodeElementAndFieldAPI){
    
        List<Map<String, Object>> individualObjects = new List<Map<String, Object>>();
        for(Contact ind : individuals){
            Map<String, Object> individualObject = new Map<String, Object>();
            for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt nodeElement : nodeElementAndFieldAPI.get(PayOrLogicConstants.INDIVIDUALS)){
                if(nodeElement.wlrcm__RequiredOptional__c == PayOrLogicConstants.REQUIRED && ind.get(nodeElement.wlrcm__FieldMappingAPI__c) == NULL){
                    throw new CustomException('This field is required in the Patient record : '+nodeElement.wlrcm__FieldMappingAPI__c);
                }else{
                    individualObject.put(nodeElement.wlrcm__ElementName__c, String.valueOf(ind.get(nodeElement.wlrcm__FieldMappingAPI__c)));
                }
            } 
            individualObject.put(PayOrLogicConstants.GUARANTOR, getGuarantorObject(ind, nodeElementAndFieldAPI.get(PayOrLogicConstants.GUARANTOR)));
            individualObjects.add(individualObject);
        }
        
        return individualObjects;
    } 
    /* ================================================
    * @Method Name => getGuarantorObject
    * @author => Admin
    * @purpose=> This method construct the Eligibilities node in the JSON request.  
    * @created date=> 
    ================================================*/
    public static Map<String,Object> getGuarantorObject(Contact individual, List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> guarantorElementAndFieldAPI){
        
        Map<String, Object> guarantorObject = new Map<String, Object>();
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt ief : guarantorElementAndFieldAPI){
            guarantorObject.put(ief.wlrcm__ElementName__c, individual.get(ief.wlrcm__FieldMappingAPI__c));
        } 
        
        return guarantorObject;
    }
    /* ================================================
    * @Method Name => getDemographicObject
    * @author => Admin
    * @purpose=> This method construct the Demographic node in the JSON request.  
    * @created date=> 
    ================================================*/
    public static Map<String, Object> getDemographicObject(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> demographicElementAndFieldAPI){
        
        Map<String, Object> demographicObject = new Map<String, Object>();
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : demographicElementAndFieldAPI){
           demographicObject.put( pl.wlrcm__ElementName__c, pl.wlrcm__Value__c);
        }

        return demographicObject;
    }
    /* ================================================
    * @Method Name => getInsuranceFinderObject
    * @author => Admin
    * @purpose=> This method construct the InsuranceFinder node in the JSON request.  
    * @created date=> 
    ================================================*/
    public static Map<String, Object> getInsuranceFinderObject(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> insuranceFinderElementAndFieldAPI){
      
        Map<String, Object> insuranceFinderObject = new Map<String, Object>();
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : insuranceFinderElementAndFieldAPI){
           insuranceFinderObject.put( pl.wlrcm__ElementName__c, pl.wlrcm__Value__c);
        }

        return insuranceFinderObject;
    }
    /* ================================================
    * @Method Name => getNodeElementAndFieldAPI
    * @author => Admin
    * @purpose=> This method will query all of the elements in the Custom Metadata wlrcm__PayOrLogicJSONRequestFieldMapping__mdt
    * @and build a map with the Node name and the element and field api
    * @created date=> 
    ================================================*/
    public static Map<String,List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> getNodeElementAndFieldAPI(){
        
        Map<String,List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> nodeElementAndFieldAPI = new  Map<String,List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>>();
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : [SELECT Id, wlrcm__ElementName__c, wlrcm__NodeName__c, wlrcm__FieldMappingAPI__c, 
                                                                                                wlrcm__Value__c, wlrcm__RequiredOptional__c
                                                                                                FROM wlrcm__PayOrLogicJSONRequestFieldMapping__mdt
                                                                                                ORDER BY wlrcm__Sort__c ASC NULLS LAST 
                                                                                                LIMIT 50000]){
            if(nodeElementAndFieldAPI.containsKey(pl.wlrcm__NodeName__c)){
                nodeElementAndFieldAPI.get(pl.wlrcm__NodeName__c).add(pl); 
            }else{
                nodeElementAndFieldAPI.put(pl.wlrcm__NodeName__c, new List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>{pl});
            }
        }

        return nodeElementAndFieldAPI;
    }
    /* ================================================
    * @Method Name => getContacts
    * @author => Admin
    * @purpose=> This method will query all of the contacts/patients with the fields indicated  in the Custom Metadata wlrcm__PayOrLogicJSONRequestFieldMapping__mdt
    * @created date=> 
    ================================================*/
    public static List<Contact> getContacts(List<Id> contactIds,  Map<String,List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> nodeElementAndFieldAPI){
        
        String queryStr='SELECT Id, ';
        for(String nodeName : nodeElementAndFieldAPI.keySet()){
            for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : nodeElementAndFieldAPI.get(nodeName)){
                if(pl.wlrcm__FieldMappingAPI__c != NULL){
                    queryStr += pl.wlrcm__FieldMappingAPI__c+ ', ';
                }
            }
        }
        queryStr = queryStr.removeEnd( ', ');
        queryStr+=' FROM Contact';
        queryStr+=' WHERE Id IN : contactIds';
        queryStr+=' LIMIT 50000';
        List<Contact> contacts = Database.query(queryStr);
        
        return contacts;
    }
    /* ================================================
    * @Method Name => createPayOrLogicRecords
    * @author => Admin
    * @purpose=> This method will return a map with a contactId as a key and the payorlogic record to update with the service result
    * @created date=> 
    ================================================*/
    public static Id createTransactionTracker(List<Id> contactIds){
        
        wlrcm__TransactionTracker__c transantion = new wlrcm__TransactionTracker__c();
        transantion.wlrcm__ServiceName__c = PayOrLogicConstants.PAYORLOGIC;
        transantion.wlrcm__NumberOfPatients__c = String.valueOf(contactIds.size());
        insert transantion;

        return transantion.Id;
    }
    /* ================================================
    * @Method Name => createPayOrLogicRecords
    * @author => Admin
    * @purpose=> This method will return a map with a contactId as a key and the payorlogic record to update with the service result
    * @created date=> 
    ================================================*/
    public static Map<Id, Id> createPayOrLogicRecords(List<Id> contactIds){
        
        Map<Id, Id> createPayOrLogicRecords = new Map<Id, Id>();
        List<wlrcm__PayOrLogic__c> payOrLogicRecords = new List<wlrcm__PayOrLogic__c>();
        for(Id cId : contactIds) {
            wlrcm__PayOrLogic__c tmp = new wlrcm__PayOrLogic__c();
            tmp.wlrcm__Patient__c = cId;
            payOrLogicRecords.add(tmp);
        }
        upsert payOrLogicRecords;

        for(wlrcm__PayOrLogic__c pol : [SELECT Id, wlrcm__Patient__c FROM wlrcm__PayOrLogic__c WHERE wlrcm__Patient__c IN : contactIds]){
            createPayOrLogicRecords.put(pol.wlrcm__Patient__c, pol.Id);
        }
        return createPayOrLogicRecords;
    }
}

