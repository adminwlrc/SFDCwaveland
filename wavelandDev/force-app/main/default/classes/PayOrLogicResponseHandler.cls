/* ================================================
 * @Class Name => PayOrLogicResponseHandler
 * @author => Admin
 * @purpose=> 
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class PayOrLogicResponseHandler {
    public static String json = '{\"TransactionId\":\"ABC123347\",\"ResponseDate\":\"2019-10-24 23:00:29\",\"Status\":\"Complete\",\"TechnicalExceptionMessage\":\"\",\"Individuals\":[{\"Firstname\":\"Shelly\",\"Lastname\":\"longs\",\"Gender\":\"F\",\"DOB\":\"1980-01-01\",\"SSN\":\"333333333\",\"Address1\":\"8566 E Cheers Av\",\"City\":\"Fantasy Island\",\"State\":\"IL\",\"Zip\":\"60750\",\"VisitNumber\":\"BW1I014116000936\",\"MRN\":\"1246293\",\"ClientId\":\"ABC123\",\"ServiceBeginDate\":\"2014-06-01\",\"ServiceEndDate\":\"2014-06-01\",\"PatientProcessType\":\"Emergency\",\"TotalCharges\":\"1394.00\",\"applicantId\":4595,\"Guarantor\":{\"Firstname\":\"Bill\",\"Lastname\":\"Aalevelg\",\"Gender\":\"M\",\"DOB\":\"1980-02-04\",\"SSN\":\"\",\"Address1\":\"8566 E Cheers Av\",\"City\":\"Fantasy Island\",\"State\":\"IL\",\"Zip\":\"60750\",\"applicantId\":4594},\"InsuranceFinder\":{\"Status\":\"Complete\"}}],\"Workflows\":[],\"PayorsWithTemporaryErrors\":[],\"PayorsWithTemporaryErrorsCount\":0}';
	
     /* ================================================
    * @Method Name => handleResponse
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static void handleResponse(String response){
        Map<String, Object> m = (Map<String, Object>)System.JSON.deserializeUntyped(response);
  
    }


}
