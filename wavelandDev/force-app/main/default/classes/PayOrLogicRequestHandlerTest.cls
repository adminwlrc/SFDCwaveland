@isTest
public with sharing class PayOrLogicRequestHandlerTest {
    private static List<Contact> createContacts(){
        List<Contact> createContacts = new List<Contact>();
        Map<String, String> fieldMap = new Map<String, String>{'FirstName'=>'Shelly', 'LastName'=>'Test'};
        createContacts = TestFactory.createObjectList('Contact', fieldMap, null, 1,1);
        System.debug('Check createContacts : '+createContacts);
        return createContacts;
    }

    //String objName,  fieldMap,  uniqueField,  uniqueLength,  numbRecords
}
