@isTest
private with sharing class PayOrLogicRequestHandlerTest {
    private static Contact createContacts(){
        
        Contact c = new Contact();
        Map<String, String> fieldMap = new Map<String, String>{'FirstName'=>'Shelly', 'LastName'=>'Test', 'wlrcm__VisitNumber__c' => 'BW1I014116000936'};
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
        System.assert([SELECT Id, wlrcm__VisitNumber__c FROM wlrcm__PayOrLogic__c WHERE wlrcm__VisitNumber__c = 'BW1I014116000936' AND wlrcm__Patient__c = : individual[0].Id] != NULL);

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
        wlrcm__TransactionTracker__c tt = [SELECT Id, wlrcm__UserExceptionMessage__c, wlrcm__Status__c FROM wlrcm__TransactionTracker__c];
        System.assertEquals(tt.wlrcm__Status__c, 'Failed');
        System.assert(tt.wlrcm__UserExceptionMessage__c.contains('ABC1233470'));
    }

    @isTest static  void testServiceDownResponse() {
        List<Contact> individual = new List<Contact>{createContacts()};
        insert individual;

        Test.starttest(); 
        PayOrLogicHttpRequest.main(new List<Id>{individual[0].Id});
        Test.stoptest();
        wlrcm__TransactionTracker__c tt = [SELECT Id, wlrcm__UserExceptionMessage__c, wlrcm__Status__c FROM wlrcm__TransactionTracker__c];
        System.assertEquals(tt.wlrcm__Status__c, 'Failed');
        System.assertEquals(tt.wlrcm__UserExceptionMessage__c, NULL);
    }
    @isTest static  void testBadStatusCodeResponse() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('PayOrLogicNegativeResponse');
        mock.setStatusCode(400);
        mock.setHeader('Content-Type', 'application/json');
        Test.setMock(HttpCalloutMock.class, mock);
        List<Contact> individual = new List<Contact>{createContacts()};
        insert individual;

        Test.starttest(); 
            PayOrLogicHttpRequest.SYSTEMDEBUG = true;
            PayOrLogicHttpRequest.main(new List<Id>{individual[0].Id});
        Test.stoptest();
        wlrcm__TransactionTracker__c tt = [SELECT Id, wlrcm__UserExceptionMessage__c, wlrcm__Status__c FROM wlrcm__TransactionTracker__c];
        System.assertEquals(tt.wlrcm__Status__c, 'Failed');
    }
    @isTest static  void testMissingRequiredFieldsResponse() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('PayOrLogicPositiveRespnse');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json');
        Test.setMock(HttpCalloutMock.class, mock);
        List<Contact> individual = new List<Contact>{createContacts()};
        individual[0].wlrcm__VisitNumber__c  = null;
        insert individual;

        Test.starttest();
            try{
                PayOrLogicHttpRequest.main(new List<Id>{individual[0].Id});
            }catch(Exception e ){
                System.assertEquals('This field is required in the Patient record : wlrcm__VisitNumber__c',e.getMessage());
            }
        Test.stoptest();
        System.assert([SELECT Id, wlrcm__VisitNumber__c FROM wlrcm__PayOrLogic__c WHERE wlrcm__VisitNumber__c = 'BW1I014116000936'] != NULL);

    }
}