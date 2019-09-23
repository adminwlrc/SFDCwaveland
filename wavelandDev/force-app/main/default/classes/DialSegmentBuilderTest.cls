/**
* @Description: This Test class will return the DIAL segment needed in the integration with Equifax
* @author: Admin
* @version: 1.0
* @since: 08/25/2019
*/
@isTest
private class DialSegmentBuilderTest {
    

    
    static testMethod void buildDIAL(){
        User testUser = TestFactory.insertNewUser('System Administrator');
        Test.startTest();
        System.runAs(testUser){
            String dial = DialSegmentBuilder.buildDIAL('ID Report');
            // System.debug('dial : '+dial);
        }
        Test.stopTest();
        
    }
}