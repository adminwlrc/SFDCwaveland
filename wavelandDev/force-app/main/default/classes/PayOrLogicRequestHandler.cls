/* ================================================
 * @Class Name => PayOrLogicRequestHandler
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicRequestHandler {
  
    public static String createJSONRequest(List<Id> contactIds){
        String jsonRequest;
        Map<String,List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> nodeElementAndFieldAPI = getNodeElementAndFieldAPI();
        List<Contact> individuals = getContacts(contactIds , nodeElementAndFieldAPI);
        Map<String, Object> productData = getProductData(nodeElementAndFieldAPI.get('productData'));
        Map<String, List<Object>> individualData = getIndividualData(individuals, nodeElementAndFieldAPI.get('Individuals'));
        Map<String, Object> guarantorData = getGuarantorData(individuals[0], nodeElementAndFieldAPI.get('Guarantor'));
        Map<String, Object> demographicData = getDemographicData(nodeElementAndFieldAPI.get('Demographic'));
        Map<String, Object> insuranceFinderData = getInsuranceFinderData(nodeElementAndFieldAPI.get('InsuranceFinder'));

        String productDatajsonRequest= JSON.serializePretty(productData);
        String individualDatajsonRequest = JSON.serializePretty(individualData);
        String guarantorDatajsonRequest = JSON.serializePretty(guarantorData);
        String demographicDatajsonRequest= JSON.serializePretty(demographicData);
        String insuranceFinderDatajsonRequest= JSON.serializePretty(insuranceFinderData);
        productDatajsonRequest = productDatajsonRequest.trim();
        individualDatajsonRequest = individualDatajsonRequest.trim();
        guarantorDatajsonRequest = guarantorDatajsonRequest.trim();
        demographicDatajsonRequest = demographicDatajsonRequest.trim();
        insuranceFinderDatajsonRequest = insuranceFinderDatajsonRequest.trim();
        productDatajsonRequest = productDatajsonRequest.remove('}');
        individualDatajsonRequest = individualDatajsonRequest.remove(']').remove('}').removeStart('{');
        guarantorDatajsonRequest = guarantorDatajsonRequest.removeEnd('}').removeStart('{');
        demographicDatajsonRequest = demographicDatajsonRequest.removeEnd('}').removeStart('{');
        insuranceFinderDatajsonRequest = insuranceFinderDatajsonRequest.removeEnd('}').removeStart('{');
       System.debug('Check productDatajsonRequest : '+ productDatajsonRequest);
       jsonRequest = productDatajsonRequest + ','+individualDatajsonRequest+','+guarantorDatajsonRequest+ '}],'+demographicDatajsonRequest+','+insuranceFinderDatajsonRequest+'}}';
        return jsonRequest.trim();
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
        System.debug('Check queryStr : '+ queryStr);
        List<Contact> contacts = Database.query(queryStr);
        
        return contacts;
    }
    /* ================================================
    * @Method Name => getproductData
    * @author => Admin
    * @purpose=> This method construct the productData node in the JSON request.  
    * @created date=> 
    ================================================*/
    public static Map<String, Map<String, Object>> getProductData(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> nodeElementAndFieldAPI){
        
        Map<String, Object> tmp = new Map<String, Object>();
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt obj : nodeElementAndFieldAPI){
            if(obj.wlrcm__ElementName__c ==  'RequestDate'){
                tmp.put( obj.wlrcm__ElementName__c, Datetime.now().format('MM/dd/yyyy\' \'HH:mm:ss'));
            }
            if(obj.wlrcm__ElementName__c ==  'TransactionId'){
                tmp.put(obj.wlrcm__ElementName__c, 'Put an Id here ');
            }
            if(obj.wlrcm__ElementName__c ==  'RequestingSoftware'){
                tmp.put(obj.wlrcm__ElementName__c, obj.wlrcm__Value__c);
            }
        }
        Map<String, Map<String, Object>> productData = new Map<String, Map<String, Object>>{'productData' => tmp };
        return productData;
    }
    /* ================================================
    * @Method Name => individualData
    * @author => Admin
    * @purpose=> This method will construct the JSON Indivvidual objects
    * @created date=> 
    ================================================*/
    public static  Map<String, List<Object>> getIndividualData( List<Contact> individuals, List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> individualElementAndFieldAPI){
        // System.debug('Check 1 : '+individualElementAndFieldAPI);
        Map<String, Object> individualObject = new Map<String, Object>();
        Map<String, List<Object>> individualData = new Map<String, List<Object>>();
        
        for(Contact ind : individuals){
            for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt ief : individualElementAndFieldAPI){
                individualObject.put(ief.wlrcm__ElementName__c, ind.get(ief.wlrcm__FieldMappingAPI__c));
            } 
            Map<String, Object> tmpObj = new Map<String, Object>();
            tmpObj.putAll(individualObject);
            if(individualData.containsKey('Individuals')){
                individualData.get('Individuals').add(tmpObj);
            }else{
                individualData.put('Individuals', new List<Object>{tmpObj});
            }
            individualObject.clear();
        }
        
        return individualData;
    } 
    /* ================================================
    * @Method Name => getGuarantorData
    * @author => Admin
    * @purpose=> This method construct the Eligibilities node in the JSON request.  
    * @created date=> 
    ================================================*/
    public static Map<String, Map<String,Object>> getGuarantorData(Contact individual, List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> guarantorElementAndFieldAPI){

        Map<String, Object> guarantorObject = new Map<String, Object>();
        Map<String, Map<String,Object>> guarantorData = new Map<String, Map<String, Object>>();
        
     
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt ief : guarantorElementAndFieldAPI){
            guarantorObject.put(ief.wlrcm__ElementName__c, individual.get(ief.wlrcm__FieldMappingAPI__c));
        } 
       
        guarantorData.put('Guarantor' , guarantorObject);
        
        
        return guarantorData;
    }
    /* ================================================
    * @Method Name => getDemographicData
    * @author => Admin
    * @purpose=> This method construct the Demographic node in the JSON request.  
    * @created date=> 
    ================================================*/
    public static Map<String, Object> getDemographicData(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> nodeElementAndFieldAPI){
        Map<String, Map<String,Object>> demographicData = new Map<String, Map<String, Object>>();
        Map<String, Object> demographicObject = new Map<String, Object>();
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : nodeElementAndFieldAPI){
           demographicObject.put( pl.wlrcm__ElementName__c, pl.wlrcm__Value__c);
        }
            demographicData.put('Demographic', demographicObject);
        return demographicData;
    }
    /* ================================================
    * @Method Name => getInsuranceFinderData
    * @author => Admin
    * @purpose=> This method construct the InsuranceFinder node in the JSON request.  
    * @created date=> 
    ================================================*/
    public static Map<String, Object> getInsuranceFinderData(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> nodeElementAndFieldAPI){
        Map<String, Map<String,Object>> insuranceFinderData = new Map<String, Map<String, Object>>();
        Map<String, Object> insuranceFinderObject = new Map<String, Object>();
        for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : nodeElementAndFieldAPI){
           insuranceFinderObject.put( pl.wlrcm__ElementName__c, pl.wlrcm__Value__c);
        }
            insuranceFinderData.put('InsuranceFinder', insuranceFinderObject);
        return insuranceFinderData;
    }
}
