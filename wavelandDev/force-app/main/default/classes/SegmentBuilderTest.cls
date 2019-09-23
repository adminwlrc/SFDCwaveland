/**
* @Description: This Test class will return the DIAL segment needed in the integration with Equifax
* @author: Admin
* @version: 1.0
* @since: 08/25/2019
*/
@isTest
private class SegmentBuilderTest {

    private static Contact getContactRecord(){

        Map<String, String> contactFieldMap = new Map<String, String>();
        contactFieldMap.put('FirstName', 'DAPHNE');
        contactFieldMap.put('LastName', 'AAPRICOT');
        contactFieldMap.put('MiddleName', '');
        contactFieldMap.put('Suffix', '');
        contactFieldMap.put('wlrcm__BirthDateOrAge__c', '08021950');
        contactFieldMap.put('wlrcm__StreetType__c', 'VW');
        contactFieldMap.put('wlrcm__SocialSecurityNumber__c', '666341002');
        contactFieldMap.put('wlrcm__CoApplicantSocialSecurityNumber__c', '');
        contactFieldMap.put('wlrcm__CoApplicantLastName__c', '');
        contactFieldMap.put('wlrcm__CoApplicantFirstName__c', '');
        contactFieldMap.put('Phone', '');
        contactFieldMap.put('MailingStreet', 'COPPERHEAD');
        contactFieldMap.put('MailingState', 'GA');
        contactFieldMap.put('MailingPostalCode', '30035');
        contactFieldMap.put('MailingCity', 'DECATUR');
        
        Contact contacRecord = (Contact)TestFactory.createObject('Contact', contactFieldMap);

        insert contacRecord;

        return contacRecord;
    }

    static testMethod void buildInquiryTest(){
        User testUser = TestFactory.insertNewUser('System Administrator');
        Contact contacRecord = getContactRecord();

        Test.startTest();
        System.runAs(testUser){
           SegmentBuilder.buildInquiry('ID Report', contacRecord.Id);
        }
        Test.stopTest();
        
    }

    static testMethod void buildInquiryTest2(){
        User testUser = TestFactory.insertNewUser('System Administrator');
        Contact contacRecord = getContactRecord();

        Test.startTest();
        System.runAs(testUser){
           SegmentBuilder.buildInquiry('ID Report', contacRecord.Id);
        }
        Test.stopTest();
        
    }

    static testMethod void buildInquiryTest3(){
        User testUser = TestFactory.insertNewUser('System Administrator');
        Contact contacRecord = getContactRecord();

        Test.startTest();
        System.runAs(testUser){
           SegmentBuilder.buildInquiry('ID Report', testUser.Id);
        }
        Test.stopTest();
        
    }
}