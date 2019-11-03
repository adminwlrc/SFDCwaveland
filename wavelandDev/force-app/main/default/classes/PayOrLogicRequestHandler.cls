/* ================================================
 * @Class Name => PayOrLogicRequestHandler
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicRequestHandler {

    /* ================================================
    * @Method Name => createJSONRequest
    * @author => Admin
    * @purpose=> This method construct JSON
    * @created date=> 
    ================================================*/
    public static String createJSONRequest(List<Id> contactIds){
        
        Map<String,List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> nodeElementAndFieldAPI = getNodeElementAndFieldAPI();
        List<Contact> individuals = getContacts(contactIds , nodeElementAndFieldAPI);
        Map<String, Object> productObject = getProductObject(nodeElementAndFieldAPI.get('productData'));
        List<Map<String, Object>> individualObjects = getIndividualObjects(individuals, nodeElementAndFieldAPI);
        productObject.put('Individuals', individualObjects);
        Map<String, Object> demographicObject = getDemographicObject(nodeElementAndFieldAPI.get('Demographic'));
        productObject.put('Demographic', demographicObject);
        Map<String, Object> insuranceFinderObject = getinsuranceFinderObject(nodeElementAndFieldAPI.get('InsuranceFinder'));
        productObject.put('InsuranceFinder', insuranceFinderObject);

        return System.JSON.serializePretty(productObject);
    }
    /* ================================================
    * @Method Name => getProductObject
    * @author => Admin
    * @purpose=> This method construct the productData node in the JSON request.  
    * @created date=> 
    ================================================*/
    public static Map<String, Object> getProductObject(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> nodeElementAndFieldAPI){
        
        Map<String, Object> productObject = new Map<String, Object>();
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt obj : nodeElementAndFieldAPI){
            if(obj.wlrcm__ElementName__c ==  'RequestDate'){
                productObject.put( obj.wlrcm__ElementName__c, Datetime.now().format('MM/dd/yyyy\' \'HH:mm:ss'));
            }
            if(obj.wlrcm__ElementName__c ==  'TransactionId'){
                productObject.put(obj.wlrcm__ElementName__c, 'Put an Id here ');
            }
            if(obj.wlrcm__ElementName__c ==  'RequestingSoftware'){
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
        
        Map<String, Object> individualObject = new Map<String, Object>();
        List<Map<String, Object>> individualObjects = new List<Map<String, Object>>();
        for(Contact ind : individuals){
            for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt ief : nodeElementAndFieldAPI.get('Individuals')){
                individualObject.put(ief.wlrcm__ElementName__c, String.valueOf(ind.get(ief.wlrcm__FieldMappingAPI__c)));
            } 
            individualObject.put('Guarantor', getGuarantorObject(ind, nodeElementAndFieldAPI.get('Guarantor')));
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
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : [SELECT Id, wlrcm__ElementName__c, wlrcm__NodeName__c, wlrcm__FieldMappingAPI__c, wlrcm__Value__c
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
}
