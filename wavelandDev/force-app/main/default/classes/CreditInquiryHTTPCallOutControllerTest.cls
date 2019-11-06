/* ================================================
 * @Class Name => CreditInquiryHTTPCallOutControllerTest
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
 @isTest
private with sharing class CreditInquiryHTTPCallOutControllerTest {
    private static Contact createContacts(){
        
        Contact c = new Contact();
        Map<String, String> fieldMap = new Map<String, String>{'FirstName'=>'DAPHNE', 'MiddleName' =>'E',
                                                                                                'LastName'=>'AAPRICOT',  'wlrcm__VisitNumber__c' => 'BW1I014116000936',
                                                                                                'wlrcm__SocialSecurityNumber__c'=>'666341002', 'wlrcm__StateCode__c' =>'GA',
                                                                                                'wlrcm__City__c'=>'DECATUR'};
        Contact createContact = (Contact)TestFactory.createObject('Contact', fieldMap);
        System.debug('Check createContacts : '+createContact);
        return createContact;
    }
    @isTest static  void testPositiveResponse() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreditInquiryPositiveResponse');
        mock.setStatusCode(200);
        Test.setMock(HttpCalloutMock.class, mock);
        List<Contact> individual = new List<Contact>{createContacts()};
        insert individual;

        Test.starttest();
            CreditInquiryHTTPCallOutController.SYSTEMDEBUG = true;
            CreditInquiryHTTPCallOutController.getRequest('ID Report',individual[0].Id);
        Test.stoptest();
        System.assertEquals('COPPERHEAD',[SELECT Id , wlrcm__StreetName__c FROM wlrcm__Equifax__c WHERE  wlrcm__Patient__c = : individual[0].Id].wlrcm__StreetName__c);

        
    }
}
