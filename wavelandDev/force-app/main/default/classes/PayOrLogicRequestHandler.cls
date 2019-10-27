/* ================================================
 * @Class Name => PayOrLogicRequestHandler
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicRequestHandler {
  
//     public static String getJSONRequest(List<Id> contactIds){
//         String jsonRequest;
//         Map<String, List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> nodeKeyAndValue = getNodeKeyAndValue();
//         List<Contact> individuals = getContacts(contactIds , nodeKeyAndValue);
//         Map<String, Object> requestData = getRequestData(nodeKeyAndValue.get('requestData'));
//         Map<String, Object> eligibilitiesData = getEligibilitiesData(nodeKeyAndValue.get('Eligibilities'));
//         Map<String, Object> demographicData = getDemographicData(nodeKeyAndValue.get('Demographic'));
//         Map<String, Object> insuranceFinder = getInsuranceFinderData(nodeKeyAndValue.get('InsuranceFinder'));

//         Map<String, List<Object>> individualData = individualData(individuals, elementAndFieldAPI(nodeKeyAndValue.get('Individuals') ));
//         Map<String, Object> productData = new Map<String, Object>();
//         productData.putAll(requestData);
//         productData.putAll(individualData);
//         productData.putAll(eligibilitiesData);
//         productData.putAll(demographicData);
//         productData.putAll(insuranceFinder);
//         jsonRequest = JSON.serialize(productData);

//         return jsonRequest;
//     }
    

    
//     /* ================================================
//     * @Method Name => getNodeKeyAndValue
//     * @author => Admin
//     * @purpose=> This method will query all of the elements in the Custom Metadata wlrcm__PayOrLogicJSONRequestFieldMapping__mdt
//     * @created date=> 
//     ================================================*/
//     public static Map<String, List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> getNodeKeyAndValue(){
//         Map<String, List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> nodeKeyAndValue = new Map<String, List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>>();
//         for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : [SELECT Id, wlrcm__ElementName__c, wlrcm__NodeName__c, wlrcm__FieldMappingAPI__c, wlrcm__Value__c
//                                                                                                 FROM wlrcm__PayOrLogicJSONRequestFieldMapping__mdt
//                                                                                                 ORDER BY wlrcm__Sort__c ASC NULLS LAST 
//                                                                                                 LIMIT 50000]){
//             if(nodeKeyAndValue.containsKey(pl.wlrcm__NodeName__c)){
//                 nodeKeyAndValue.get(pl.wlrcm__NodeName__c).add(pl); 
//             }else{
//                 System.debug('Check node '+pl.wlrcm__NodeName__c);
//                 nodeKeyAndValue.put(pl.wlrcm__NodeName__c, new List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>{pl});
//             }
//         }

//         return nodeKeyAndValue;
//     }
//      /* ================================================
//     * @Method Name => getContacts
//     * @author => Admin
//     * @purpose=> This method will query all of the contacts/patients with the fields indicated  in the Custom Metadata wlrcm__PayOrLogicJSONRequestFieldMapping__mdt
//     * @created date=> 
//     ================================================*/
//     public static List<Contact> getContacts(List<Id> contactIds, Map<String, List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt>> nodeKeyAndValue){

//         String queryStr='SELECT Id, ';
//         for(String nodeName : nodeKeyAndValue.keySet()){
//             for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt str : nodeKeyAndValue.get(nodeName)){
//                 if(str.wlrcm__FieldMappingAPI__c != NULL){
//                      queryStr += str.wlrcm__FieldMappingAPI__c + ', ';
//                 }
              
//             }
//         }
//         queryStr = queryStr.removeEnd( ', ');
//         queryStr+=' FROM Contact';
//         queryStr+=' WHERE Id IN : contactIds';
//         queryStr+=' LIMIT 50000';
//         List<Contact> contacts = Database.query(queryStr);
        
//         return contacts;
//     }

//    /* ================================================
//     * @Method Name => elementAndFieldAPI
//     * @author => Admin
//     * @purpose=> This method will help individualData method. It associate the Key alue in the custom metadata with the contact information.
//     * @created date=> 
//     ================================================*/
      
//     public static Map<String, String> elementAndFieldAPI(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> elementRecords){
//         Map<String, String> elementAndFieldAPI = new Map<String, String>();
//         for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : elementRecords){
//             elementAndFieldAPI.put(String.valueOf(pl.wlrcm__ElementName__c), String.valueOf(pl.wlrcm__FieldMappingAPI__c));
//         }

//         return elementAndFieldAPI;
//     }
//      /* ================================================
//     * @Method Name => getRequestData
//     * @author => Admin
//     * @purpose=> This method construct the requestData node in the JSON request.  
//     * @created date=> 
//     ================================================*/
//     public static Map<String, Object> getRequestData(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> nodeKeyAndValue){
//         Map<String, Object> requestData = new Map<String, Object>();
//         for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : nodeKeyAndValue){
//             if(pl.wlrcm__ElementName__c ==  'RequestDate'){
//                 requestData.put( pl.wlrcm__ElementName__c, Datetime.now().format('MM/dd/yyyy\' \'HH:mm:ss'));
//             }else{
//                 requestData.put( pl.wlrcm__ElementName__c, pl.wlrcm__Value__c);
//             }
//         }

//         return requestData;
//     }
//     /* ================================================
//     * @Method Name => individualData
//     * @author => Admin
//     * @purpose=> This method will construct the JSON Indivvidual objects
//     * @created date=> 
//     ================================================*/
//     public static  Map<String, List<Object>> individualData( List<Contact> individuals, Map<String, String> individualElementAndFieldAPI){
//             System.debug('Check 1 : '+individualElementAndFieldAPI);
//         Map<String, Object> individualObject = new Map<String, Object>();
//         Map<String, List<Object>> individualData = new Map<String, List<Object>>();
        
//         for(Contact ind : individuals){
//             for(String str : individualElementAndFieldAPI.keySet()){
//                 individualObject.put(str, ind.get(individualElementAndFieldAPI.get(str)));
//             } 
//             Map<String, Object> tmpObj = new Map<String, Object>();
//             tmpObj.putAll(individualObject);
//             if(individualData.containsKey('Individuals')){
//                 individualData.get('Individuals').add(tmpObj);
//             }else{
//                 individualData.put('Individuals', new List<Object>{tmpObj});
//             }
//             individualObject.clear();
//         }
        
//         return individualData;
//     } 
//     /* ================================================
//     * @Method Name => getEligibilitiesData
//     * @author => Admin
//     * @purpose=> This method construct the Eligibilities node in the JSON request.  
//     * @created date=> 
//     ================================================*/
//     public static Map<String, Object> getEligibilitiesData(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> nodeKeyAndValue){

//         Map<String, Object> eligibilitiesData = new Map<String, Object>();
//         Map<String, List<Object>> PayorData = new  Map<String, List<Object>>{nodeKeyAndValue[0].wlrcm__ElementName__c => new List<Object>{nodeKeyAndValue[0].wlrcm__Value__c}};
//         eligibilitiesData.put( 'Eligibilities',PayorData);

//         return eligibilitiesData;
//     }
//     /* ================================================
//     * @Method Name => getDemographicData
//     * @author => Admin
//     * @purpose=> This method construct the Demographic node in the JSON request.  
//     * @created date=> 
//     ================================================*/
//     public static Map<String, Object> getDemographicData(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> nodeKeyAndValue){
//         Map<String, Object> demographicData = new Map<String, Object>();
//         for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : nodeKeyAndValue){
//            demographicData.put( pl.wlrcm__ElementName__c, pl.wlrcm__Value__c);
//         }

//         return demographicData;
//     }
//      /* ================================================
//     * @Method Name => getInsuranceFinderData
//     * @author => Admin
//     * @purpose=> This method construct the InsuranceFinder node in the JSON request.  
//     * @created date=> 
//     ================================================*/
//     public static Map<String, Object> getInsuranceFinderData(List<wlrcm__PayOrLogicJSONRequestFieldMapping__mdt> nodeKeyAndValue){
//         Map<String, Object> InsuranceFinderData = new Map<String, Object>();
//         for(wlrcm__PayOrLogicJSONRequestFieldMapping__mdt pl : nodeKeyAndValue){
//            InsuranceFinderData.put( pl.wlrcm__ElementName__c, pl.wlrcm__Value__c);
//         }

//         return InsuranceFinderData;
//     }
}
