/* ================================================
 * @Class Name => PayOrLogicJSON
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicJSON {
    
    public static  Map<String, List<Object>> individualData( List<Contact> individuals, Map<String, String> elementAndFieldAPIMapping){
        Map<String, Object> individualObject = new Map<String, Object>();
        Map<String, List<Object>> individualData = new Map<String, List<Object>>();
        
        for(Contact ind : individuals){
            for(String str : elementAndFieldAPIMapping.keySet()){
                individualObject.put(str, ind.get(str));
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

    public static String getJSONRequest(){
        String jsonRequest;
        Map<String, List<wlrcm__PayOrLogicPatientJSONFieldMapping__mdt>> elementsMapping = getKeyAndValue();
        List<Contact> individuals = getContacts(new List<Id>{'0033i000007fVoCAAU'}, elementsMapping);
        Map<String, String> elementAndFieldAPIMapping = elementAndFieldAPIMapping('wlrcm__ElementName__c', 'wlrcm__FieldMappingAPI__c', elementsMapping.get('Individuals'));
        Map<String, Object> requestData = getRequestData();
        Map<String, Object> eligibilitiesData = getEligibilitiesData();
        Map<String, Object> demographicData = getDemographicData();
        Map<String, Object> insuranceFinder = getInsuranceFinderData();

        Map<String, List<Object>> individualData = individualData(individuals,elementAndFieldAPIMapping );
        Map<String, Object> productData = new Map<String, Object>();
        productData.putAll(requestData);
        productData.putAll(individualData);
        productData.putAll(eligibilitiesData);
        productData.putAll(demographicData);
        productData.putAll(insuranceFinder);
        jsonRequest = JSON.serialize(productData);

        return jsonRequest;
    }

    public static Map<String, List<wlrcm__PayOrLogicPatientJSONFieldMapping__mdt>> getKeyAndValue(){
        Map<String, List<wlrcm__PayOrLogicPatientJSONFieldMapping__mdt>> elementsMapping = new Map<String, List<wlrcm__PayOrLogicPatientJSONFieldMapping__mdt>>();
        for(wlrcm__PayOrLogicPatientJSONFieldMapping__mdt pl : [SELECT Id, wlrcm__ElementName__c, wlrcm__NodeName__c, wlrcm__FieldMappingAPI__c
                                                                                                FROM wlrcm__PayOrLogicPatientJSONFieldMapping__mdt
                                                                                                ORDER BY wlrcm__Sort__c ASC NULLS LAST 
                                                                                                LIMIT 50000]){
            if(elementsMapping.containsKey(pl.wlrcm__NodeName__c)){
                elementsMapping.get(pl.wlrcm__NodeName__c).add(pl); 
            }else{
                elementsMapping.put(pl.wlrcm__NodeName__c, new List<wlrcm__PayOrLogicPatientJSONFieldMapping__mdt>{pl});
            }
        }

        return elementsMapping;
    }

    public static List<Contact> getContacts(List<Id> contactIds, Map<String, List<wlrcm__PayOrLogicPatientJSONFieldMapping__mdt>> elementsMapping){

        String queryStr='SELECT Id, ';
        for(String nodeName : elementsMapping.keySet()){
            for(wlrcm__PayOrLogicPatientJSONFieldMapping__mdt str : elementsMapping.get(nodeName)){
                queryStr += str.wlrcm__FieldMappingAPI__c + ', ';
            }
        }
        queryStr = queryStr.removeEnd( ', ');
        queryStr+=' FROM Contact';
        queryStr+=' WHERE Id IN : contactIds';
        queryStr+=' LIMIT 50000';

        List<Contact> contacts = Database.query(queryStr);
        
        return contacts;
    }

    
      
    public static Map<String, String> elementAndFieldAPIMapping(String key, String value, List<wlrcm__PayOrLogicPatientJSONFieldMapping__mdt> elementRecords){
        Map<String, String> elementAndFieldAPIMapping = new Map<String, String>();
        for(wlrcm__PayOrLogicPatientJSONFieldMapping__mdt pl : elementRecords){
            elementAndFieldAPIMapping.put(String.valueOf(pl.get(key)), String.valueOf(pl.get(value)));
        }

        return elementAndFieldAPIMapping;
    }
    public static Map<String, Object> getRequestData(){

        Map<String, Object> requestData = new Map<String, Object>{ 
            'TransactionId' => 'ABC123',
            'RequestingSoftware' => 'PL Portal',
            'RequestDate' => Datetime.now().format('MM/dd/yyyy\' \'HH:mm:ss')
        };

        return requestData;
    }

    public static Map<String, Object> getEligibilitiesData(){

        Map<String, Object> eligibilitiesData = new Map<String, Object>();
        Map<String, List<Object>> PayorData = new  Map<String, List<Object>>{'Payor' => new List<Object>{'Anthem BCBS'}};
        eligibilitiesData.put( 'Eligibilities',PayorData);

        return eligibilitiesData;
    }
    public static Map<String, Object> getDemographicData(){

        Map<String, Object> demographicData = new Map<String, Object>{ 
            'IncludeCredit' => 'No'
        };

        return demographicData;
    }

    public static Map<String, Object> getInsuranceFinderData(){

        Map<String, Object> InsuranceFinderData = new Map<String, Object>{ 
            'CallbackURL' => 'None'
        };

        return InsuranceFinderData;
    }
}

  // individualList.Firstname = 'Shelly';
        // individualList.Lastname = 'test';
        // individualList.Gender = 'F';
        // "DOB = "1/1/1980",
        // "SSN = "333333333",
        // "Address1 = "8566 E Cheers Av",
        // "City = "Fantasy Island",
        // "State = "IL",
        // "Zip = "60750",
        // "VisitNumber = "BW1I014116000936",
        // "MRN = "1246293",
        // "SubscriberId = "2848392ML",
        // "ClientId = "ABC123",
        // "PracticeLocation = "OH",
        // "ServiceBeginDate = "6/1/2014",
        // "ServiceEndDate = "6/1/2014",
        // "PatientProcessType = "Emergency",
        // "TotalCharges = "1394.00",
        // "Guarantor = {
        //   "Firstname = "Bill",
        //   "Lastname = "Aalevelg",
        //   "Gender = "M",
        //   "DOB = "2/4/1980",
        //   "Address1 = "8566 E Cheers Av",
        //   "City = "Fantasy Island",
        //   "State = "IL",
        //   "Zip = "60750",
        //   "Employer = "ABC Company"
        // List<Object>