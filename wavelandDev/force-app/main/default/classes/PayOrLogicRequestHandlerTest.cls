@isTest
private with sharing class PayOrLogicRequestHandlerTest {
    private static Contact createContacts(){
        
        Contact c = new Contact();
        Map<String, String> fieldMap = new Map<String, String>{'FirstName'=>'Shelly', 'LastName'=>'Test', 'wlrcm__VisitNumber__c' => '012345'};
        Contact createContact = (Contact)TestFactory.createObject('Contact', fieldMap);
        System.debug('Check createContacts : '+createContact);
        return createContact;
    }
    @isTest static  void testPositiveResponse() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('PayOrLogicPositiveRespnse');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json');
        Test.setMock(HttpCalloutMock.class, mock);
        List<Contact> individual = new List<Contact>{createContacts()};
        insert individual;

        Test.starttest();
            PayOrLogicHttpRequest.main(new List<Id>{individual[0].Id});
        Test.stoptest();

    }

    @isTest static  void testNegativeResponse() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('PayOrLogicNegativeResponse');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json');
        Test.setMock(HttpCalloutMock.class, mock);
        List<Contact> individual = new List<Contact>{createContacts()};
        insert individual;

        Test.starttest(); 
            PayOrLogicHttpRequest.SYSTEMDEBUG = true;
            PayOrLogicHttpRequest.main(new List<Id>{individual[0].Id});
        Test.stoptest();
    }
}