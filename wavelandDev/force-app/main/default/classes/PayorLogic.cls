public class PayorLogic {
    public class AddClaim_element {
        public String claim837;
        private String[] claim837_type_info = new String[]{'claim837','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'claim837'};
    }
    public class ProcessRawEligibilityRequestResponse_element {
        public String ProcessRawEligibilityRequestResult;
        private String[] ProcessRawEligibilityRequestResult_type_info = new String[]{'ProcessRawEligibilityRequestResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'ProcessRawEligibilityRequestResult'};
    }
    public class UploadBulkFile2_element {
        public String fileBytes;
        public String fileName;
        public PayorLogic.ArrayOfString tests;
        public String fileFormat;
        public String transactionId;
        public String payor;
        public String payorAdvanceVerifier;
        public String initiatedBy;
        public Integer FTPSweeperTestConfigDetailId;
        public Boolean runFileImmediately;
        public PayorLogic.ArrayOfBoolean ignoreErrorThresholds;
        public Integer companyDataMappingId;
        public Boolean ignoreDuplicateVisits;
        private String[] fileBytes_type_info = new String[]{'fileBytes','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] fileName_type_info = new String[]{'fileName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] tests_type_info = new String[]{'tests','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] fileFormat_type_info = new String[]{'fileFormat','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payor_type_info = new String[]{'payor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payorAdvanceVerifier_type_info = new String[]{'payorAdvanceVerifier','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] initiatedBy_type_info = new String[]{'initiatedBy','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] FTPSweeperTestConfigDetailId_type_info = new String[]{'FTPSweeperTestConfigDetailId','http://www.payorlogic.com/',null,'1','1','true'};
        private String[] runFileImmediately_type_info = new String[]{'runFileImmediately','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] ignoreErrorThresholds_type_info = new String[]{'ignoreErrorThresholds','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] companyDataMappingId_type_info = new String[]{'companyDataMappingId','http://www.payorlogic.com/',null,'1','1','true'};
        private String[] ignoreDuplicateVisits_type_info = new String[]{'ignoreDuplicateVisits','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'fileBytes','fileName','tests','fileFormat','transactionId','payor','payorAdvanceVerifier','initiatedBy','FTPSweeperTestConfigDetailId','runFileImmediately','ignoreErrorThresholds','companyDataMappingId','ignoreDuplicateVisits'};
    }
    public class DailyCopay {
        public String BeginDate;
        public String EndDate;
        public String StartDay;
        public String EndDay;
        public String Amount;
        public String DaysRemaining;
        private String[] BeginDate_type_info = new String[]{'BeginDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EndDate_type_info = new String[]{'EndDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] StartDay_type_info = new String[]{'StartDay','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EndDay_type_info = new String[]{'EndDay','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Amount_type_info = new String[]{'Amount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DaysRemaining_type_info = new String[]{'DaysRemaining','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'BeginDate','EndDate','StartDay','EndDay','Amount','DaysRemaining'};
    }
    public class SendEligibilityBatchesForBulkSubmissionTest_element {
        public Integer bulkSubmissionTestId;
        private String[] bulkSubmissionTestId_type_info = new String[]{'bulkSubmissionTestId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'bulkSubmissionTestId'};
    }
    public class RunTestsJSON_element {
        public PayorLogic.PLRequest productData;
        private String[] productData_type_info = new String[]{'productData','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'productData'};
    }
    public class RunTestsResponse_element {
        public String RunTestsResult;
        private String[] RunTestsResult_type_info = new String[]{'RunTestsResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RunTestsResult'};
    }
    public class RetrieveCompanyPayors_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class RunTestsWithId_element {
        public Integer applicantId;
        public PayorLogic.ArrayOfString tests;
        public String transactionId;
        public String payorName;
        public String payorNameAdvancedVerifier;
        private String[] applicantId_type_info = new String[]{'applicantId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] tests_type_info = new String[]{'tests','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payorName_type_info = new String[]{'payorName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payorNameAdvancedVerifier_type_info = new String[]{'payorNameAdvancedVerifier','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'applicantId','tests','transactionId','payorName','payorNameAdvancedVerifier'};
    }
    public class InsuranceFinderResults {
        public String CallbackURL;
        public String Status;
        public String ErrorMessage;
        private String[] CallbackURL_type_info = new String[]{'CallbackURL','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Status_type_info = new String[]{'Status','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ErrorMessage_type_info = new String[]{'ErrorMessage','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CallbackURL','Status','ErrorMessage'};
    }
    public class CheckForCompletedEligibilityBatchResponse_element {
        public String CheckForCompletedEligibilityBatchResult;
        private String[] CheckForCompletedEligibilityBatchResult_type_info = new String[]{'CheckForCompletedEligibilityBatchResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CheckForCompletedEligibilityBatchResult'};
    }
    public class CheckForCompletedRetroCheckBatches_element {
        public Integer retroCheckRunId;
        private String[] retroCheckRunId_type_info = new String[]{'retroCheckRunId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'retroCheckRunId'};
    }
    public class RetrieveAvailablePayorsJSON_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class ArrayOfBoolean {
        public Boolean[] bool;
        private String[] boolean_type_info = new String[]{'boolean','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'boolean'};
    }
    public class UploadCustomerFile_element {
        public Integer companyId;
        public String transactionId;
        public String fileBytes;
        public String fileName;
        public String ftpFolderName;
        public Integer userId;
        public String ipAddress;
        private String[] companyId_type_info = new String[]{'companyId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] fileBytes_type_info = new String[]{'fileBytes','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] fileName_type_info = new String[]{'fileName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ftpFolderName_type_info = new String[]{'ftpFolderName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] userId_type_info = new String[]{'userId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] ipAddress_type_info = new String[]{'ipAddress','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'companyId','transactionId','fileBytes','fileName','ftpFolderName','userId','ipAddress'};
    }
    public class ServiceType {
        public String Code;
        public String Description;
        private String[] Code_type_info = new String[]{'Code','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Description_type_info = new String[]{'Description','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Code','Description'};
    }
    public class ArrayOfAdditionalAddress {
        public PayorLogic.AdditionalAddress[] Address;
        private String[] Address_type_info = new String[]{'Address','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Address'};
    }
    public class AddVisitLoadResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CheckClaimsStatus_element {
        public String productData;
        private String[] productData_type_info = new String[]{'productData','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'productData'};
    }
    public class CheckClaimsStatusJSONResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CheckExistingClaimsStatusResponse_element {
        public String CheckExistingClaimsStatusResult;
        private String[] CheckExistingClaimsStatusResult_type_info = new String[]{'CheckExistingClaimsStatusResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CheckExistingClaimsStatusResult'};
    }
    public class RunTestsInternal_element {
        public Integer companyId;
        public Integer applicantId;
        public PayorLogic.ArrayOfString tests;
        public String transactionId;
        public String payorName;
        public String payorNameAdvancedVerifier;
        public String npiCode;
        public String npiPractice;
        public Boolean verboseResponse;
        public Integer bulkSubmissionTestQueueId;
        public Integer retryRequestId;
        public PayorLogic.ArrayOfString retryPayors;
        public String originator;
        public Boolean sendDemoWithoutCorrections;
        public String subscriberId;
        private String[] companyId_type_info = new String[]{'companyId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] applicantId_type_info = new String[]{'applicantId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] tests_type_info = new String[]{'tests','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payorName_type_info = new String[]{'payorName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payorNameAdvancedVerifier_type_info = new String[]{'payorNameAdvancedVerifier','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] npiCode_type_info = new String[]{'npiCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] npiPractice_type_info = new String[]{'npiPractice','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] verboseResponse_type_info = new String[]{'verboseResponse','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] bulkSubmissionTestQueueId_type_info = new String[]{'bulkSubmissionTestQueueId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] retryRequestId_type_info = new String[]{'retryRequestId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] retryPayors_type_info = new String[]{'retryPayors','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] originator_type_info = new String[]{'originator','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] sendDemoWithoutCorrections_type_info = new String[]{'sendDemoWithoutCorrections','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] subscriberId_type_info = new String[]{'subscriberId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'companyId','applicantId','tests','transactionId','payorName','payorNameAdvancedVerifier','npiCode','npiPractice','verboseResponse','bulkSubmissionTestQueueId','retryRequestId','retryPayors','originator','sendDemoWithoutCorrections','subscriberId'};
    }
    public class ProcessEligibilityCheckResponse_element {
        public String ProcessEligibilityCheckResult;
        private String[] ProcessEligibilityCheckResult_type_info = new String[]{'ProcessEligibilityCheckResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'ProcessEligibilityCheckResult'};
    }
    public class UpdateCompanyPayorsResponse_element {
        public String UpdateCompanyPayorsResult;
        private String[] UpdateCompanyPayorsResult_type_info = new String[]{'UpdateCompanyPayorsResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'UpdateCompanyPayorsResult'};
    }
    public class RunTestsInternalTest_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class UploadCustomerFileResponse_element {
        public String UploadCustomerFileResult;
        private String[] UploadCustomerFileResult_type_info = new String[]{'UploadCustomerFileResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'UploadCustomerFileResult'};
    }
    public class RetrieveCompanyPayorsJSONResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class PLRequest {
        public String TransactionId;
        public String RequestingSoftware;
        public String RequestDate;
        public String SubscriberId;
        public String CardIssueDate;
        public String Payor;
        public PayorLogic.NPISpecifier NPI;
        public PayorLogic.ArrayOfIndividual Individuals;
        public PayorLogic.DemographicResult Demographics;
        public PayorLogic.InsuranceFinderResults InsuranceFinder;
        public PayorLogic.EligibilityResult[] Eligibility;
        public PayorLogic.AdvancedVerifierRequest[] AdvancedVerifier;
        public PayorLogic.RetroCheckResult AdvancedMedicaid;
        public String[] Workflow;
        public PayorLogic.ArrayOfCompanyPayorInfo CompanyPayors;
        public PayorLogic.PLPreAuthRequest[] PreAuthorization;
        private String[] TransactionId_type_info = new String[]{'TransactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] RequestingSoftware_type_info = new String[]{'RequestingSoftware','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] RequestDate_type_info = new String[]{'RequestDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SubscriberId_type_info = new String[]{'SubscriberId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CardIssueDate_type_info = new String[]{'CardIssueDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Payor_type_info = new String[]{'Payor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] NPI_type_info = new String[]{'NPI','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Individuals_type_info = new String[]{'Individuals','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Demographics_type_info = new String[]{'Demographics','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InsuranceFinder_type_info = new String[]{'InsuranceFinder','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Eligibility_type_info = new String[]{'Eligibility','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] AdvancedVerifier_type_info = new String[]{'AdvancedVerifier','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] AdvancedMedicaid_type_info = new String[]{'AdvancedMedicaid','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Workflow_type_info = new String[]{'Workflow','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] CompanyPayors_type_info = new String[]{'CompanyPayors','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PreAuthorization_type_info = new String[]{'PreAuthorization','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'TransactionId','RequestingSoftware','RequestDate','SubscriberId','CardIssueDate','Payor','NPI','Individuals','Demographics','InsuranceFinder','Eligibility','AdvancedVerifier','AdvancedMedicaid','Workflow','CompanyPayors','PreAuthorization'};
    }
    public class GetCustomResultsFile_element {
        public Integer bulkSubmissionId;
        private String[] bulkSubmissionId_type_info = new String[]{'bulkSubmissionId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'bulkSubmissionId'};
    }
    public class ArrayOfServiceType {
        public PayorLogic.ServiceType[] ServiceType;
        private String[] ServiceType_type_info = new String[]{'ServiceType','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'ServiceType'};
    }
    public class ArrayOfString1 {
        public String[] Code;
        private String[] Code_type_info = new String[]{'Code','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Code'};
    }
    public class UpdateDeductibleJSON_element {
        public Integer applicantId;
        public String transactionId;
        public String payorName;
        private String[] applicantId_type_info = new String[]{'applicantId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payorName_type_info = new String[]{'payorName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'applicantId','transactionId','payorName'};
    }
    public class ArrayOfString2 {
        public String[] ContactNumber;
        private String[] ContactNumber_type_info = new String[]{'ContactNumber','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'ContactNumber'};
    }
    public class ArrayOfString3 {
        public String[] Message;
        private String[] Message_type_info = new String[]{'Message','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Message'};
    }
    public class RetroCheckResult {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class RunTestsInternalResponse_element {
        public String RunTestsInternalResult;
        private String[] RunTestsInternalResult_type_info = new String[]{'RunTestsInternalResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RunTestsInternalResult'};
    }
    public class ArrayOfAdditionalCoverageInfo {
        public PayorLogic.AdditionalCoverageInfo[] AdditionalCoverageInfo;
        private String[] AdditionalCoverageInfo_type_info = new String[]{'AdditionalCoverageInfo','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'AdditionalCoverageInfo'};
    }
    public class CompanyPayorInfo {
        public String Name;
        public String Code;
        public String MasterPayor;
        public String MasterPayorCode;
        public Boolean Delete_x;
        private String[] Name_type_info = new String[]{'Name','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Code_type_info = new String[]{'Code','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MasterPayor_type_info = new String[]{'MasterPayor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MasterPayorCode_type_info = new String[]{'MasterPayorCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Delete_x_type_info = new String[]{'Delete','http://www.payorlogic.com/',null,'0','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Name','Code','MasterPayor','MasterPayorCode','Delete_x'};
    }
    public class RunTestsJSONResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class RunTestsBulkResponse_element {
        public String RunTestsBulkResult;
        private String[] RunTestsBulkResult_type_info = new String[]{'RunTestsBulkResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RunTestsBulkResult'};
    }
    public class NPISpecifier {
        public String Practice;
        public String Code;
        public String PIN;
        private String[] Practice_type_info = new String[]{'Practice','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Code_type_info = new String[]{'Code','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PIN_type_info = new String[]{'PIN','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Practice','Code','PIN'};
    }
    public class ArrayOfCreditResultPublicRecord {
        public PayorLogic.CreditResultPublicRecord[] CreditResultPublicRecord;
        private String[] CreditResultPublicRecord_type_info = new String[]{'CreditResultPublicRecord','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CreditResultPublicRecord'};
    }
    public class RetrieveFileFormatsJSONResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class ProcessRawClaimsStatusRequest_element {
        public String accessKey;
        public String raw276;
        public Integer userId;
        public String firstName;
        public String lastName;
        private String[] accessKey_type_info = new String[]{'accessKey','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] raw276_type_info = new String[]{'raw276','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] userId_type_info = new String[]{'userId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] firstName_type_info = new String[]{'firstName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] lastName_type_info = new String[]{'lastName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'accessKey','raw276','userId','firstName','lastName'};
    }
    public class EligibilityResult {
        public String Payor;
        public String PayorCode;
        public Integer DeductibleManagement;
        public Boolean SkipIfActiveFound;
        public String ScannedCardOcrText;
        public String ScannedCardImageData;
        public String ScannedCardImageFormat;
        public String Status;
        public String Hierarchy;
        public String SubscriberId;
        public String PolicyStartDate;
        public String PolicyEndDate;
        public String AddedDate;
        public String GroupNumber;
        public String GroupName;
        public String Raw271;
        public String Source;
        public String PlanSponsor;
        public String PlanNetworkIdentificationNumber;
        public String MedicarePartAStart;
        public String MedicarePartAEnd;
        public String MedicarePartBStart;
        public String MedicarePartBEnd;
        public String DateOfDeath;
        public String AdditionalCoverage;
        public String AdditionalCoveragePolicyNumber;
        public String AdditionalCoverageContactNumber;
        public String AdditionalCoverageStartDate;
        public String AdditionalCoverageEndDate;
        public String AdditionalCoverageAddress;
        public String AdditionalCoverageAddress2;
        public String AdditionalCoverageCity;
        public String AdditionalCoverageState;
        public String AdditionalCoverageZip;
        public String MedicaidCoverageDetails;
        public String MedicaidCoverageDetails2;
        public String MedicaidCoverageDetails3;
        public String MedicaidCoverageDetails4;
        public String MedicaidCoverageDetails5;
        public String MedicaidCoverageDetails6;
        public String ReceivedFirstName;
        public String ReceivedMiddleName;
        public String ReceivedLastName;
        public String ReceivedSuffix;
        public String ReceivedDOB;
        public String ReceivedSSN;
        public String ReceivedGender;
        public String ReceivedAddress1;
        public String ReceivedAddress2;
        public String ReceivedCity;
        public String ReceivedState;
        public String ReceivedZip;
        public String DepFirstName;
        public String DepMiddleName;
        public String DepLastName;
        public String DepSuffix;
        public String DepDOB;
        public String DepSSN;
        public String DepGender;
        public String DepAddress1;
        public String DepAddress2;
        public String DepCity;
        public String DepState;
        public String DepZip;
        public String MismatchFirstName;
        public String MismatchLastName;
        public String MismatchSSN;
        public String MismatchDOB;
        public String MismatchState;
        public String ConfidenceScore;
        public String ConfidenceScoreReason;
        public String MedicarePartAOnly;
        public String MedicareReplacementPayor;
        public String MedicareReplacementPlanName;
        public String MedicareSupplementalPlanName;
        public String IsMedicareReplacementPlan;
        public String HospiceStartDate;
        public String HospiceEndDate;
        public String HospiceNPI;
        public String HospiceName;
        public String HospiceAddress1;
        public String HospiceAddress2;
        public String HospiceCity;
        public String HospiceState;
        public String HospiceZip;
        public String IpaIdentifier;
        public String IpaDescription;
        public String TpaName;
        public String TpaSubscriberId;
        public String MBI;
        public String COBDate;
        public String COBEndDate;
        public String MedicaidRecipientId;
        public String ElectronicVerificationCode;
        public String PayorAddress1;
        public String PayorAddress2;
        public String PayorCity;
        public String PayorState;
        public String PayorZip;
        public String CountyCode;
        public String InsurancePlan;
        public String InsuranceType;
        public String Deductible;
        public String DeductibleRemaining;
        public String OutOfPocket;
        public String OutOfPocketRemaining;
        public String LifetimeLimit;
        public String LifetimeLimitRemaining;
        public String SpendDown;
        public String SpendDownAmount;
        public String ManagedCarePlan;
        public String ManagedCareProgram;
        public String ManagedCareSubscriberId;
        public String ProviderName;
        public String HealthInsuranceClaimNumber;
        public String QualifiedMedicareBeneficiary;
        public String PlanCode;
        public PayorLogic.ArrayOfAmountInfo Deductibles;
        public PayorLogic.ArrayOfDailyCopay HospitalDailyCopays;
        public PayorLogic.ArrayOfDailyCopay SkilledNursingDailyCopays;
        public PayorLogic.ArrayOfEligibilityValidation Validations;
        public PayorLogic.ArrayOfAdditionalCoverageInfo AdditionalCoverageInfos;
        public PayorLogic.ArrayOfString3 Messages;
        public PayorLogic.ArrayOfRelatedEntity RelatedEntities;
        public HIPAA.EligibilityBenefitDocument XML271;
        public String DeductibleManagementPending;
        public String DeductibleReleaseReason;
        private String[] Payor_type_info = new String[]{'Payor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PayorCode_type_info = new String[]{'PayorCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DeductibleManagement_type_info = new String[]{'DeductibleManagement','http://www.payorlogic.com/',null,'0','1','true'};
        private String[] SkipIfActiveFound_type_info = new String[]{'SkipIfActiveFound','http://www.payorlogic.com/',null,'0','1','true'};
        private String[] ScannedCardOcrText_type_info = new String[]{'ScannedCardOcrText','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ScannedCardImageData_type_info = new String[]{'ScannedCardImageData','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ScannedCardImageFormat_type_info = new String[]{'ScannedCardImageFormat','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Status_type_info = new String[]{'Status','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Hierarchy_type_info = new String[]{'Hierarchy','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SubscriberId_type_info = new String[]{'SubscriberId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PolicyStartDate_type_info = new String[]{'PolicyStartDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PolicyEndDate_type_info = new String[]{'PolicyEndDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AddedDate_type_info = new String[]{'AddedDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] GroupNumber_type_info = new String[]{'GroupNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] GroupName_type_info = new String[]{'GroupName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Raw271_type_info = new String[]{'Raw271','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Source_type_info = new String[]{'Source','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PlanSponsor_type_info = new String[]{'PlanSponsor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PlanNetworkIdentificationNumber_type_info = new String[]{'PlanNetworkIdentificationNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicarePartAStart_type_info = new String[]{'MedicarePartAStart','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicarePartAEnd_type_info = new String[]{'MedicarePartAEnd','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicarePartBStart_type_info = new String[]{'MedicarePartBStart','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicarePartBEnd_type_info = new String[]{'MedicarePartBEnd','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateOfDeath_type_info = new String[]{'DateOfDeath','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverage_type_info = new String[]{'AdditionalCoverage','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoveragePolicyNumber_type_info = new String[]{'AdditionalCoveragePolicyNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverageContactNumber_type_info = new String[]{'AdditionalCoverageContactNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverageStartDate_type_info = new String[]{'AdditionalCoverageStartDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverageEndDate_type_info = new String[]{'AdditionalCoverageEndDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverageAddress_type_info = new String[]{'AdditionalCoverageAddress','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverageAddress2_type_info = new String[]{'AdditionalCoverageAddress2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverageCity_type_info = new String[]{'AdditionalCoverageCity','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverageState_type_info = new String[]{'AdditionalCoverageState','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverageZip_type_info = new String[]{'AdditionalCoverageZip','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicaidCoverageDetails_type_info = new String[]{'MedicaidCoverageDetails','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicaidCoverageDetails2_type_info = new String[]{'MedicaidCoverageDetails2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicaidCoverageDetails3_type_info = new String[]{'MedicaidCoverageDetails3','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicaidCoverageDetails4_type_info = new String[]{'MedicaidCoverageDetails4','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicaidCoverageDetails5_type_info = new String[]{'MedicaidCoverageDetails5','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicaidCoverageDetails6_type_info = new String[]{'MedicaidCoverageDetails6','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedFirstName_type_info = new String[]{'ReceivedFirstName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedMiddleName_type_info = new String[]{'ReceivedMiddleName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedLastName_type_info = new String[]{'ReceivedLastName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedSuffix_type_info = new String[]{'ReceivedSuffix','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedDOB_type_info = new String[]{'ReceivedDOB','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedSSN_type_info = new String[]{'ReceivedSSN','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedGender_type_info = new String[]{'ReceivedGender','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedAddress1_type_info = new String[]{'ReceivedAddress1','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedAddress2_type_info = new String[]{'ReceivedAddress2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedCity_type_info = new String[]{'ReceivedCity','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedState_type_info = new String[]{'ReceivedState','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ReceivedZip_type_info = new String[]{'ReceivedZip','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepFirstName_type_info = new String[]{'DepFirstName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepMiddleName_type_info = new String[]{'DepMiddleName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepLastName_type_info = new String[]{'DepLastName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepSuffix_type_info = new String[]{'DepSuffix','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepDOB_type_info = new String[]{'DepDOB','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepSSN_type_info = new String[]{'DepSSN','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepGender_type_info = new String[]{'DepGender','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepAddress1_type_info = new String[]{'DepAddress1','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepAddress2_type_info = new String[]{'DepAddress2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepCity_type_info = new String[]{'DepCity','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepState_type_info = new String[]{'DepState','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DepZip_type_info = new String[]{'DepZip','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MismatchFirstName_type_info = new String[]{'MismatchFirstName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MismatchLastName_type_info = new String[]{'MismatchLastName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MismatchSSN_type_info = new String[]{'MismatchSSN','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MismatchDOB_type_info = new String[]{'MismatchDOB','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MismatchState_type_info = new String[]{'MismatchState','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ConfidenceScore_type_info = new String[]{'ConfidenceScore','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ConfidenceScoreReason_type_info = new String[]{'ConfidenceScoreReason','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicarePartAOnly_type_info = new String[]{'MedicarePartAOnly','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicareReplacementPayor_type_info = new String[]{'MedicareReplacementPayor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicareReplacementPlanName_type_info = new String[]{'MedicareReplacementPlanName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicareSupplementalPlanName_type_info = new String[]{'MedicareSupplementalPlanName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] IsMedicareReplacementPlan_type_info = new String[]{'IsMedicareReplacementPlan','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospiceStartDate_type_info = new String[]{'HospiceStartDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospiceEndDate_type_info = new String[]{'HospiceEndDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospiceNPI_type_info = new String[]{'HospiceNPI','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospiceName_type_info = new String[]{'HospiceName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospiceAddress1_type_info = new String[]{'HospiceAddress1','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospiceAddress2_type_info = new String[]{'HospiceAddress2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospiceCity_type_info = new String[]{'HospiceCity','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospiceState_type_info = new String[]{'HospiceState','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospiceZip_type_info = new String[]{'HospiceZip','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] IpaIdentifier_type_info = new String[]{'IpaIdentifier','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] IpaDescription_type_info = new String[]{'IpaDescription','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TpaName_type_info = new String[]{'TpaName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TpaSubscriberId_type_info = new String[]{'TpaSubscriberId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MBI_type_info = new String[]{'MBI','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] COBDate_type_info = new String[]{'COBDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] COBEndDate_type_info = new String[]{'COBEndDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicaidRecipientId_type_info = new String[]{'MedicaidRecipientId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ElectronicVerificationCode_type_info = new String[]{'ElectronicVerificationCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PayorAddress1_type_info = new String[]{'PayorAddress1','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PayorAddress2_type_info = new String[]{'PayorAddress2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PayorCity_type_info = new String[]{'PayorCity','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PayorState_type_info = new String[]{'PayorState','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PayorZip_type_info = new String[]{'PayorZip','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CountyCode_type_info = new String[]{'CountyCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InsurancePlan_type_info = new String[]{'InsurancePlan','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InsuranceType_type_info = new String[]{'InsuranceType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Deductible_type_info = new String[]{'Deductible','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DeductibleRemaining_type_info = new String[]{'DeductibleRemaining','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] OutOfPocket_type_info = new String[]{'OutOfPocket','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] OutOfPocketRemaining_type_info = new String[]{'OutOfPocketRemaining','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] LifetimeLimit_type_info = new String[]{'LifetimeLimit','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] LifetimeLimitRemaining_type_info = new String[]{'LifetimeLimitRemaining','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SpendDown_type_info = new String[]{'SpendDown','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SpendDownAmount_type_info = new String[]{'SpendDownAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ManagedCarePlan_type_info = new String[]{'ManagedCarePlan','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ManagedCareProgram_type_info = new String[]{'ManagedCareProgram','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ManagedCareSubscriberId_type_info = new String[]{'ManagedCareSubscriberId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ProviderName_type_info = new String[]{'ProviderName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HealthInsuranceClaimNumber_type_info = new String[]{'HealthInsuranceClaimNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] QualifiedMedicareBeneficiary_type_info = new String[]{'QualifiedMedicareBeneficiary','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PlanCode_type_info = new String[]{'PlanCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Deductibles_type_info = new String[]{'Deductibles','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HospitalDailyCopays_type_info = new String[]{'HospitalDailyCopays','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SkilledNursingDailyCopays_type_info = new String[]{'SkilledNursingDailyCopays','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Validations_type_info = new String[]{'Validations','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AdditionalCoverageInfos_type_info = new String[]{'AdditionalCoverageInfos','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Messages_type_info = new String[]{'Messages','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] RelatedEntities_type_info = new String[]{'RelatedEntities','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] XML271_type_info = new String[]{'XML271','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DeductibleManagementPending_type_info = new String[]{'DeductibleManagementPending','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DeductibleReleaseReason_type_info = new String[]{'DeductibleReleaseReason','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Payor','PayorCode','DeductibleManagement','SkipIfActiveFound','ScannedCardOcrText','ScannedCardImageData','ScannedCardImageFormat','Status','Hierarchy','SubscriberId','PolicyStartDate','PolicyEndDate','AddedDate','GroupNumber','GroupName','Raw271','Source','PlanSponsor','PlanNetworkIdentificationNumber','MedicarePartAStart','MedicarePartAEnd','MedicarePartBStart','MedicarePartBEnd','DateOfDeath','AdditionalCoverage','AdditionalCoveragePolicyNumber','AdditionalCoverageContactNumber','AdditionalCoverageStartDate','AdditionalCoverageEndDate','AdditionalCoverageAddress','AdditionalCoverageAddress2','AdditionalCoverageCity','AdditionalCoverageState','AdditionalCoverageZip','MedicaidCoverageDetails','MedicaidCoverageDetails2','MedicaidCoverageDetails3','MedicaidCoverageDetails4','MedicaidCoverageDetails5','MedicaidCoverageDetails6','ReceivedFirstName','ReceivedMiddleName','ReceivedLastName','ReceivedSuffix','ReceivedDOB','ReceivedSSN','ReceivedGender','ReceivedAddress1','ReceivedAddress2','ReceivedCity','ReceivedState','ReceivedZip','DepFirstName','DepMiddleName','DepLastName','DepSuffix','DepDOB','DepSSN','DepGender','DepAddress1','DepAddress2','DepCity','DepState','DepZip','MismatchFirstName','MismatchLastName','MismatchSSN','MismatchDOB','MismatchState','ConfidenceScore','ConfidenceScoreReason','MedicarePartAOnly','MedicareReplacementPayor','MedicareReplacementPlanName','MedicareSupplementalPlanName','IsMedicareReplacementPlan','HospiceStartDate','HospiceEndDate','HospiceNPI','HospiceName','HospiceAddress1','HospiceAddress2','HospiceCity','HospiceState','HospiceZip','IpaIdentifier','IpaDescription','TpaName','TpaSubscriberId','MBI','COBDate','COBEndDate','MedicaidRecipientId','ElectronicVerificationCode','PayorAddress1','PayorAddress2','PayorCity','PayorState','PayorZip','CountyCode','InsurancePlan','InsuranceType','Deductible','DeductibleRemaining','OutOfPocket','OutOfPocketRemaining','LifetimeLimit','LifetimeLimitRemaining','SpendDown','SpendDownAmount','ManagedCarePlan','ManagedCareProgram','ManagedCareSubscriberId','ProviderName','HealthInsuranceClaimNumber','QualifiedMedicareBeneficiary','PlanCode','Deductibles','HospitalDailyCopays','SkilledNursingDailyCopays','Validations','AdditionalCoverageInfos','Messages','RelatedEntities','XML271','DeductibleManagementPending','DeductibleReleaseReason'};
    }
    public class CheckExistingClaimsStatus_element {
        public Integer statusCheckClaimId;
        private String[] statusCheckClaimId_type_info = new String[]{'statusCheckClaimId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'statusCheckClaimId'};
    }
    public class AddClaimResponse_element {
        public String AddClaimResult;
        private String[] AddClaimResult_type_info = new String[]{'AddClaimResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'AddClaimResult'};
    }
    public class AddVisitLoad_element {
        public String visitNumber;
        private String[] visitNumber_type_info = new String[]{'visitNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'visitNumber'};
    }
    public class PLPreAuthRequest {
        public String PayorName;
        public String PayorCode;
        public String State;
        public String PatientType;
        public String InNetwork;
        public String[] MedicalCode;
        public String ServiceDate;
        public String PlanName;
        public String PlanType;
        public String EmployerGroupNumber;
        public String SubscriberId;
        private String[] PayorName_type_info = new String[]{'PayorName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PayorCode_type_info = new String[]{'PayorCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] State_type_info = new String[]{'State','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PatientType_type_info = new String[]{'PatientType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InNetwork_type_info = new String[]{'InNetwork','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MedicalCode_type_info = new String[]{'MedicalCode','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] ServiceDate_type_info = new String[]{'ServiceDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PlanName_type_info = new String[]{'PlanName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PlanType_type_info = new String[]{'PlanType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EmployerGroupNumber_type_info = new String[]{'EmployerGroupNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SubscriberId_type_info = new String[]{'SubscriberId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'PayorName','PayorCode','State','PatientType','InNetwork','MedicalCode','ServiceDate','PlanName','PlanType','EmployerGroupNumber','SubscriberId'};
    }
    public class AuthHeader {
        public String Token;
        private String[] Token_type_info = new String[]{'Token','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Token'};
    }
    public class CheckTransactionStatusJSON_element {
        public String transactionId;
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'transactionId'};
    }
    public class CheckTransactionStatus_element {
        public String transactionId;
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'transactionId'};
    }
    public class CheckClaimsStatusJSON_element {
        public PayorLogic.PLClaimRequest productData;
        private String[] productData_type_info = new String[]{'productData','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'productData'};
    }
    public class UploadCustomResultsFileResponse_element {
        public String UploadCustomResultsFileResult;
        private String[] UploadCustomResultsFileResult_type_info = new String[]{'UploadCustomResultsFileResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'UploadCustomResultsFileResult'};
    }
    public class ArrayOfIndividual {
        public PayorLogic.Individual[] Individual;
        private String[] Individual_type_info = new String[]{'Individual','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Individual'};
    }
    public class ArrayOfCompanyPayorInfo {
        public PayorLogic.CompanyPayorInfo[] CompanyPayor;
        private String[] CompanyPayor_type_info = new String[]{'CompanyPayor','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CompanyPayor'};
    }
    public class RunTestsBulkInternal_element {
        public String processQueueId;
        public Integer companyId;
        public PayorLogic.ArrayOfString tests;
        public String transactionId;
        public Boolean fromBatch;
        private String[] processQueueId_type_info = new String[]{'processQueueId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] companyId_type_info = new String[]{'companyId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] tests_type_info = new String[]{'tests','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] fromBatch_type_info = new String[]{'fromBatch','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'processQueueId','companyId','tests','transactionId','fromBatch'};
    }
    public class UpdateCompanyPayorsJSONResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class RunDeductibleManagementQueueItemResponse_element {
        public String RunDeductibleManagementQueueItemResult;
        private String[] RunDeductibleManagementQueueItemResult_type_info = new String[]{'RunDeductibleManagementQueueItemResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RunDeductibleManagementQueueItemResult'};
    }
    public class EligibilityValidation {
        public String Code;
        public String Description;
        public String FollowUpCode;
        private String[] Code_type_info = new String[]{'Code','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Description_type_info = new String[]{'Description','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] FollowUpCode_type_info = new String[]{'FollowUpCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Code','Description','FollowUpCode'};
    }
    public class AdditionalCoverageInfo {
        public String Description;
        public PayorLogic.ArrayOfString1 ServiceTypes;
        public PayorLogic.ArrayOfServiceType ServiceTypeDetails;
        public String StartDate;
        public String EndDate;
        public String PolicyNumber;
        public PayorLogic.ArrayOfString2 ContactNumbers;
        private String[] Description_type_info = new String[]{'Description','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceTypes_type_info = new String[]{'ServiceTypes','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceTypeDetails_type_info = new String[]{'ServiceTypeDetails','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] StartDate_type_info = new String[]{'StartDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EndDate_type_info = new String[]{'EndDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PolicyNumber_type_info = new String[]{'PolicyNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ContactNumbers_type_info = new String[]{'ContactNumbers','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Description','ServiceTypes','ServiceTypeDetails','StartDate','EndDate','PolicyNumber','ContactNumbers'};
    }
    public class CreditResultTradeAccount {
        public String PortfolioType;
        public String AccountNumber;
        public String ECOADesignator;
        public String DateOpened;
        public String DateEffective;
        public String DateClosed;
        public String ClosedIndicator;
        public String DatePaidOut;
        public String CurrentBalance;
        public String HighCredit;
        public String CreditLimit;
        public String AccountRating;
        public String PastDue;
        public String UpdateMethod;
        public String Miscellaneous;
        public String DateLastActivity;
        public String DateLastPayment;
        public String DateReported;
        public String DateVerified;
        public String DateMaxDelinquency;
        public String ConsumerComment;
        public String PaymentAmount;
        public String PaymentFrequency;
        public String PaymentStatus;
        public String NumTimes30DaysLate;
        public String NumTimes60DaysLate;
        public String NumTimes90DaysLate;
        private String[] PortfolioType_type_info = new String[]{'PortfolioType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AccountNumber_type_info = new String[]{'AccountNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ECOADesignator_type_info = new String[]{'ECOADesignator','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateOpened_type_info = new String[]{'DateOpened','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateEffective_type_info = new String[]{'DateEffective','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateClosed_type_info = new String[]{'DateClosed','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ClosedIndicator_type_info = new String[]{'ClosedIndicator','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DatePaidOut_type_info = new String[]{'DatePaidOut','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CurrentBalance_type_info = new String[]{'CurrentBalance','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] HighCredit_type_info = new String[]{'HighCredit','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CreditLimit_type_info = new String[]{'CreditLimit','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AccountRating_type_info = new String[]{'AccountRating','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PastDue_type_info = new String[]{'PastDue','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] UpdateMethod_type_info = new String[]{'UpdateMethod','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Miscellaneous_type_info = new String[]{'Miscellaneous','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateLastActivity_type_info = new String[]{'DateLastActivity','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateLastPayment_type_info = new String[]{'DateLastPayment','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateReported_type_info = new String[]{'DateReported','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateVerified_type_info = new String[]{'DateVerified','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateMaxDelinquency_type_info = new String[]{'DateMaxDelinquency','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ConsumerComment_type_info = new String[]{'ConsumerComment','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PaymentAmount_type_info = new String[]{'PaymentAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PaymentFrequency_type_info = new String[]{'PaymentFrequency','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PaymentStatus_type_info = new String[]{'PaymentStatus','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] NumTimes30DaysLate_type_info = new String[]{'NumTimes30DaysLate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] NumTimes60DaysLate_type_info = new String[]{'NumTimes60DaysLate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] NumTimes90DaysLate_type_info = new String[]{'NumTimes90DaysLate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'PortfolioType','AccountNumber','ECOADesignator','DateOpened','DateEffective','DateClosed','ClosedIndicator','DatePaidOut','CurrentBalance','HighCredit','CreditLimit','AccountRating','PastDue','UpdateMethod','Miscellaneous','DateLastActivity','DateLastPayment','DateReported','DateVerified','DateMaxDelinquency','ConsumerComment','PaymentAmount','PaymentFrequency','PaymentStatus','NumTimes30DaysLate','NumTimes60DaysLate','NumTimes90DaysLate'};
    }
    public class ArrayOfCreditResultEmployment {
        public PayorLogic.CreditResultEmployment[] CreditResultEmployment;
        private String[] CreditResultEmployment_type_info = new String[]{'CreditResultEmployment','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CreditResultEmployment'};
    }
    public class SendEligibilityBatchesForRetroCheck_element {
        public Integer retroCheckRunId;
        private String[] retroCheckRunId_type_info = new String[]{'retroCheckRunId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'retroCheckRunId'};
    }
    public class RetrieveFileFormatsResponse_element {
        public String RetrieveFileFormatsResult;
        private String[] RetrieveFileFormatsResult_type_info = new String[]{'RetrieveFileFormatsResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RetrieveFileFormatsResult'};
    }
    public class UpdateCompanyPayors_element {
        public String requestData;
        private String[] requestData_type_info = new String[]{'requestData','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'requestData'};
    }
    public class GetCustomResultsFileResponse_element {
        public String GetCustomResultsFileResult;
        private String[] GetCustomResultsFileResult_type_info = new String[]{'GetCustomResultsFileResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'GetCustomResultsFileResult'};
    }
    public class ProcessRawClaimsStatusRequestResponse_element {
        public String ProcessRawClaimsStatusRequestResult;
        private String[] ProcessRawClaimsStatusRequestResult_type_info = new String[]{'ProcessRawClaimsStatusRequestResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'ProcessRawClaimsStatusRequestResult'};
    }
    public class AdvancedVerifierRequest {
        public String Payor;
        public String PayorCode;
        public String SubscriberId;
        private String[] Payor_type_info = new String[]{'Payor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PayorCode_type_info = new String[]{'PayorCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SubscriberId_type_info = new String[]{'SubscriberId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Payor','PayorCode','SubscriberId'};
    }
    public class UploadBulkFile_element {
        public String fileBytes;
        public String fileName;
        public PayorLogic.ArrayOfString tests;
        public String fileFormat;
        public String transactionId;
        public String payor;
        public String initiatedBy;
        public Integer FTPSweeperTestConfigDetailId;
        public Boolean runFileImmediately;
        public PayorLogic.ArrayOfBoolean ignoreErrorThresholds;
        public Integer companyDataMappingId;
        private String[] fileBytes_type_info = new String[]{'fileBytes','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] fileName_type_info = new String[]{'fileName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] tests_type_info = new String[]{'tests','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] fileFormat_type_info = new String[]{'fileFormat','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payor_type_info = new String[]{'payor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] initiatedBy_type_info = new String[]{'initiatedBy','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] FTPSweeperTestConfigDetailId_type_info = new String[]{'FTPSweeperTestConfigDetailId','http://www.payorlogic.com/',null,'1','1','true'};
        private String[] runFileImmediately_type_info = new String[]{'runFileImmediately','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] ignoreErrorThresholds_type_info = new String[]{'ignoreErrorThresholds','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] companyDataMappingId_type_info = new String[]{'companyDataMappingId','http://www.payorlogic.com/',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'fileBytes','fileName','tests','fileFormat','transactionId','payor','initiatedBy','FTPSweeperTestConfigDetailId','runFileImmediately','ignoreErrorThresholds','companyDataMappingId'};
    }
    public class RunArxTest_element {
        public Integer applicantId;
        public Integer requestId;
        private String[] applicantId_type_info = new String[]{'applicantId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] requestId_type_info = new String[]{'requestId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'applicantId','requestId'};
    }
    public class RunTestsBulk_element {
        public String processQueueId;
        public PayorLogic.ArrayOfString tests;
        public String transactionId;
        private String[] processQueueId_type_info = new String[]{'processQueueId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] tests_type_info = new String[]{'tests','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'processQueueId','tests','transactionId'};
    }
    public class RunTestsBulkInternalResponse_element {
        public String RunTestsBulkInternalResult;
        private String[] RunTestsBulkInternalResult_type_info = new String[]{'RunTestsBulkInternalResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RunTestsBulkInternalResult'};
    }
    public class CheckTransactionStatusJSONResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CheckClaimsStatusResponse_element {
        public String CheckClaimsStatusResult;
        private String[] CheckClaimsStatusResult_type_info = new String[]{'CheckClaimsStatusResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CheckClaimsStatusResult'};
    }
    public class ClaimRequest {
        public Integer ApplicantId;
        public String PayorCode;
        public PayorLogic.ClaimService[] Service;
        private String[] ApplicantId_type_info = new String[]{'ApplicantId','http://www.payorlogic.com/',null,'0','1','true'};
        private String[] PayorCode_type_info = new String[]{'PayorCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Service_type_info = new String[]{'Service','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'ApplicantId','PayorCode','Service'};
    }
    public class AmountInfo {
        public String ServiceTypeCode;
        public String ServiceTypeDescription;
        public String InsuranceTypeCode;
        public String InsuranceTypeDescription;
        public String PlanName;
        public String CoverageLevelCode;
        public String CoverageLevelDescription;
        public String InPlanNetwork;
        public String AnnualAmount;
        public String EpisodeAmount;
        public String RemainingAmount;
        private String[] ServiceTypeCode_type_info = new String[]{'ServiceTypeCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceTypeDescription_type_info = new String[]{'ServiceTypeDescription','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InsuranceTypeCode_type_info = new String[]{'InsuranceTypeCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InsuranceTypeDescription_type_info = new String[]{'InsuranceTypeDescription','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PlanName_type_info = new String[]{'PlanName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CoverageLevelCode_type_info = new String[]{'CoverageLevelCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CoverageLevelDescription_type_info = new String[]{'CoverageLevelDescription','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InPlanNetwork_type_info = new String[]{'InPlanNetwork','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AnnualAmount_type_info = new String[]{'AnnualAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EpisodeAmount_type_info = new String[]{'EpisodeAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] RemainingAmount_type_info = new String[]{'RemainingAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'ServiceTypeCode','ServiceTypeDescription','InsuranceTypeCode','InsuranceTypeDescription','PlanName','CoverageLevelCode','CoverageLevelDescription','InPlanNetwork','AnnualAmount','EpisodeAmount','RemainingAmount'};
    }
    public class ArrayOfCreditResultInstallmentAccount {
        public PayorLogic.CreditResultInstallmentAccount[] CreditResultInstallmentAccount;
        private String[] CreditResultInstallmentAccount_type_info = new String[]{'CreditResultInstallmentAccount','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CreditResultInstallmentAccount'};
    }
    public class CreditResultCollectionAccount {
        public String PortfolioType;
        public String AccountNumber;
        public String ECOADesignator;
        public String DateOpened;
        public String DateEffective;
        public String DateClosed;
        public String ClosedIndicator;
        public String DatePaidOut;
        public String CurrentBalance;
        public String PastDue;
        public String AccountRating;
        public String DateFirstDelinquent;
        public String UpdateMethod;
        public String DateReported;
        public String CollectionAgencyKob;
        public String CollectionAgencyName;
        public String CreditorName;
        public String OriginalBalance;
        private String[] PortfolioType_type_info = new String[]{'PortfolioType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AccountNumber_type_info = new String[]{'AccountNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ECOADesignator_type_info = new String[]{'ECOADesignator','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateOpened_type_info = new String[]{'DateOpened','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateEffective_type_info = new String[]{'DateEffective','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateClosed_type_info = new String[]{'DateClosed','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ClosedIndicator_type_info = new String[]{'ClosedIndicator','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DatePaidOut_type_info = new String[]{'DatePaidOut','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CurrentBalance_type_info = new String[]{'CurrentBalance','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PastDue_type_info = new String[]{'PastDue','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AccountRating_type_info = new String[]{'AccountRating','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateFirstDelinquent_type_info = new String[]{'DateFirstDelinquent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] UpdateMethod_type_info = new String[]{'UpdateMethod','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateReported_type_info = new String[]{'DateReported','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CollectionAgencyKob_type_info = new String[]{'CollectionAgencyKob','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CollectionAgencyName_type_info = new String[]{'CollectionAgencyName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CreditorName_type_info = new String[]{'CreditorName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] OriginalBalance_type_info = new String[]{'OriginalBalance','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'PortfolioType','AccountNumber','ECOADesignator','DateOpened','DateEffective','DateClosed','ClosedIndicator','DatePaidOut','CurrentBalance','PastDue','AccountRating','DateFirstDelinquent','UpdateMethod','DateReported','CollectionAgencyKob','CollectionAgencyName','CreditorName','OriginalBalance'};
    }
    public class RetrieveAvailablePayors_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class ArrayOfEligibilityValidation {
        public PayorLogic.EligibilityValidation[] Validation;
        private String[] Validation_type_info = new String[]{'Validation','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Validation'};
    }
    public class CreditResultaRxChange {
        public String Error;
        public String segment;
        public String aRxFinancialClass;
        public String quality;
        public String payorScore;
        public String assetCategory;
        public String charityCareDiscountAmount;
        public String charityCareTransactionCode;
        public String creditRiskScore;
        public String referralDate;
        public String isDefaultScore;
        public String isAddressDifferent;
        public String isAnyAddressDifferent;
        public String isCityDifferent;
        public String isCountyDifferent;
        public String isStateDifferent;
        public String isZipDifferent;
        public String isDOBDifferent;
        public String isFirstNameDifferent;
        public String isLastNameDifferent;
        public String isPhoneDifferent;
        public String isSSNDifferent;
        public String federalPovertyLevel;
        public String usedInsuranceDiscovery;
        public String patientResponsibilityAfterCharityCare;
        public String mostRecentBankruptcyDate;
        public String treatmentStrategy;
        private String[] Error_type_info = new String[]{'Error','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] segment_type_info = new String[]{'segment','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] aRxFinancialClass_type_info = new String[]{'aRxFinancialClass','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] quality_type_info = new String[]{'quality','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payorScore_type_info = new String[]{'payorScore','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] assetCategory_type_info = new String[]{'assetCategory','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] charityCareDiscountAmount_type_info = new String[]{'charityCareDiscountAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] charityCareTransactionCode_type_info = new String[]{'charityCareTransactionCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] creditRiskScore_type_info = new String[]{'creditRiskScore','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] referralDate_type_info = new String[]{'referralDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isDefaultScore_type_info = new String[]{'isDefaultScore','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isAddressDifferent_type_info = new String[]{'isAddressDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isAnyAddressDifferent_type_info = new String[]{'isAnyAddressDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isCityDifferent_type_info = new String[]{'isCityDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isCountyDifferent_type_info = new String[]{'isCountyDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isStateDifferent_type_info = new String[]{'isStateDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isZipDifferent_type_info = new String[]{'isZipDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isDOBDifferent_type_info = new String[]{'isDOBDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isFirstNameDifferent_type_info = new String[]{'isFirstNameDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isLastNameDifferent_type_info = new String[]{'isLastNameDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isPhoneDifferent_type_info = new String[]{'isPhoneDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] isSSNDifferent_type_info = new String[]{'isSSNDifferent','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] federalPovertyLevel_type_info = new String[]{'federalPovertyLevel','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] usedInsuranceDiscovery_type_info = new String[]{'usedInsuranceDiscovery','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] patientResponsibilityAfterCharityCare_type_info = new String[]{'patientResponsibilityAfterCharityCare','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] mostRecentBankruptcyDate_type_info = new String[]{'mostRecentBankruptcyDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] treatmentStrategy_type_info = new String[]{'treatmentStrategy','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Error','segment','aRxFinancialClass','quality','payorScore','assetCategory','charityCareDiscountAmount','charityCareTransactionCode','creditRiskScore','referralDate','isDefaultScore','isAddressDifferent','isAnyAddressDifferent','isCityDifferent','isCountyDifferent','isStateDifferent','isZipDifferent','isDOBDifferent','isFirstNameDifferent','isLastNameDifferent','isPhoneDifferent','isSSNDifferent','federalPovertyLevel','usedInsuranceDiscovery','patientResponsibilityAfterCharityCare','mostRecentBankruptcyDate','treatmentStrategy'};
    }
    public class CheckForCompletedRetroCheckBatchesResponse_element {
        public String CheckForCompletedRetroCheckBatchesResult;
        private String[] CheckForCompletedRetroCheckBatchesResult_type_info = new String[]{'CheckForCompletedRetroCheckBatchesResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CheckForCompletedRetroCheckBatchesResult'};
    }
    public class HealthCheck_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class ArrayOfAmountInfo {
        public PayorLogic.AmountInfo[] Deductible;
        private String[] Deductible_type_info = new String[]{'Deductible','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Deductible'};
    }
    public class RunTests_element {
        public String productData;
        private String[] productData_type_info = new String[]{'productData','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'productData'};
    }
    public class ArrayOfRelatedEntity {
        public PayorLogic.RelatedEntity[] RelatedEntity;
        private String[] RelatedEntity_type_info = new String[]{'RelatedEntity','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RelatedEntity'};
    }
    public class RetrieveFileFormats_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class ClaimStatusCheckBase {
        public String VisitNumber;
        public String Firstname;
        public String Lastname;
        public String Middlename;
        public String Suffix;
        public String Gender;
        public String DOB;
        public PayorLogic.ClaimGuarantor Guarantor;
        public String SubscriberId;
        public String ServiceBeginDate;
        public String ServiceEndDate;
        public String Payor;
        public String TrackingNumber;
        public Decimal SubmittedCharges;
        public PayorLogic.ClaimIdentifier[] Identifier;
        private String[] VisitNumber_type_info = new String[]{'VisitNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Firstname_type_info = new String[]{'Firstname','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Lastname_type_info = new String[]{'Lastname','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Middlename_type_info = new String[]{'Middlename','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Suffix_type_info = new String[]{'Suffix','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Gender_type_info = new String[]{'Gender','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DOB_type_info = new String[]{'DOB','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Guarantor_type_info = new String[]{'Guarantor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SubscriberId_type_info = new String[]{'SubscriberId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceBeginDate_type_info = new String[]{'ServiceBeginDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceEndDate_type_info = new String[]{'ServiceEndDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Payor_type_info = new String[]{'Payor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TrackingNumber_type_info = new String[]{'TrackingNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SubmittedCharges_type_info = new String[]{'SubmittedCharges','http://www.payorlogic.com/',null,'0','1','true'};
        private String[] Identifier_type_info = new String[]{'Identifier','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'VisitNumber','Firstname','Lastname','Middlename','Suffix','Gender','DOB','Guarantor','SubscriberId','ServiceBeginDate','ServiceEndDate','Payor','TrackingNumber','SubmittedCharges','Identifier'};
    }
    public class ProcessRawEligibilityRequest_element {
        public String accessKey;
        public String vendor;
        public String raw270;
        public Integer userId;
        public String firstName;
        public String lastName;
        public Integer relatedEligibilityId;
        private String[] accessKey_type_info = new String[]{'accessKey','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] vendor_type_info = new String[]{'vendor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] raw270_type_info = new String[]{'raw270','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] userId_type_info = new String[]{'userId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] firstName_type_info = new String[]{'firstName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] lastName_type_info = new String[]{'lastName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] relatedEligibilityId_type_info = new String[]{'relatedEligibilityId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'accessKey','vendor','raw270','userId','firstName','lastName','relatedEligibilityId'};
    }
    public class RetrieveCompanyPayorsResponse_element {
        public String RetrieveCompanyPayorsResult;
        private String[] RetrieveCompanyPayorsResult_type_info = new String[]{'RetrieveCompanyPayorsResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RetrieveCompanyPayorsResult'};
    }
    public class UpdateCompanyPayorsJSON_element {
        public PayorLogic.PLRequest requestData;
        private String[] requestData_type_info = new String[]{'requestData','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'requestData'};
    }
    public class CreditResultEmployment {
        public String EmployerName;
        public String Occupation;
        public String EmploymentStart;
        public String EmploymentEnd;
        public String Income;
        public String EmployerAddress;
        public String EmployerCity;
        public String EmployerState;
        public String EmployerZip;
        public String EmployerPhone;
        private String[] EmployerName_type_info = new String[]{'EmployerName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Occupation_type_info = new String[]{'Occupation','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EmploymentStart_type_info = new String[]{'EmploymentStart','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EmploymentEnd_type_info = new String[]{'EmploymentEnd','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Income_type_info = new String[]{'Income','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EmployerAddress_type_info = new String[]{'EmployerAddress','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EmployerCity_type_info = new String[]{'EmployerCity','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EmployerState_type_info = new String[]{'EmployerState','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EmployerZip_type_info = new String[]{'EmployerZip','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EmployerPhone_type_info = new String[]{'EmployerPhone','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'EmployerName','Occupation','EmploymentStart','EmploymentEnd','Income','EmployerAddress','EmployerCity','EmployerState','EmployerZip','EmployerPhone'};
    }
    public class PLClaimRequest {
        public String TransactionId;
        public PayorLogic.NPISpecifier NPI;
        public PayorLogic.NPISpecifier SubmitterNPI;
        public PayorLogic.ClaimRequest[] Claim;
        private String[] TransactionId_type_info = new String[]{'TransactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] NPI_type_info = new String[]{'NPI','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SubmitterNPI_type_info = new String[]{'SubmitterNPI','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Claim_type_info = new String[]{'Claim','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'TransactionId','NPI','SubmitterNPI','Claim'};
    }
    public class Individual {
        public String Firstname;
        public String Lastname;
        public String Middlename;
        public String Suffix;
        public String Gender;
        public String DOB;
        public String SSN;
        public String Address1;
        public String Address2;
        public String City;
        public String State;
        public String Zip;
        public String PhoneNumber;
        public String VisitNumber;
        public String MRN;
        public String ClientId;
        public String PracticeLocation;
        public String CustomerId;
        public String ClientField1;
        public String ClientField2;
        public String ClientField3;
        public String ClientField4;
        public String ClientField5;
        public String ServiceBeginDate;
        public String ServiceEndDate;
        public String PatientProcessType;
        public String TotalCharges;
        public String Employer;
        public String SubscriberId;
        public String IndividualTransactionId;
        public String IndividualTransactionId2;
        public Integer applicantId;
        public String FacilityName;
        public String ServiceDepartment;
        public String PrimaryDiagnosticCode;
        public String CurrentFinancialClass;
        public String PrimaryFinancialClass;
        public String DateOfAdmission;
        public String InvoiceDate;
        public String TotalAdjustments;
        public String TotalPaymentsReceived;
        public String TotalPatientPaymentReceived;
        public String TotalDueFromPatient;
        public String TotalDue;
        public String AmountOfLastPatientPayment;
        public String DateOfLastPatientPayment;
        public PayorLogic.Individual Guarantor;
        public PayorLogic.DemographicResult Demographic;
        public PayorLogic.InsuranceFinderResults InsuranceFinder;
        public PayorLogic.EligibilityResult[] Eligibility;
        public PayorLogic.CreditResult Credit;
        private String[] Firstname_type_info = new String[]{'Firstname','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Lastname_type_info = new String[]{'Lastname','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Middlename_type_info = new String[]{'Middlename','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Suffix_type_info = new String[]{'Suffix','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Gender_type_info = new String[]{'Gender','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DOB_type_info = new String[]{'DOB','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SSN_type_info = new String[]{'SSN','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Address1_type_info = new String[]{'Address1','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Address2_type_info = new String[]{'Address2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] City_type_info = new String[]{'City','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] State_type_info = new String[]{'State','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Zip_type_info = new String[]{'Zip','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PhoneNumber_type_info = new String[]{'PhoneNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] VisitNumber_type_info = new String[]{'VisitNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] MRN_type_info = new String[]{'MRN','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ClientId_type_info = new String[]{'ClientId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PracticeLocation_type_info = new String[]{'PracticeLocation','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CustomerId_type_info = new String[]{'CustomerId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ClientField1_type_info = new String[]{'ClientField1','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ClientField2_type_info = new String[]{'ClientField2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ClientField3_type_info = new String[]{'ClientField3','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ClientField4_type_info = new String[]{'ClientField4','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ClientField5_type_info = new String[]{'ClientField5','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceBeginDate_type_info = new String[]{'ServiceBeginDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceEndDate_type_info = new String[]{'ServiceEndDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PatientProcessType_type_info = new String[]{'PatientProcessType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TotalCharges_type_info = new String[]{'TotalCharges','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Employer_type_info = new String[]{'Employer','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SubscriberId_type_info = new String[]{'SubscriberId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] IndividualTransactionId_type_info = new String[]{'IndividualTransactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] IndividualTransactionId2_type_info = new String[]{'IndividualTransactionId2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] applicantId_type_info = new String[]{'applicantId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] FacilityName_type_info = new String[]{'FacilityName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceDepartment_type_info = new String[]{'ServiceDepartment','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PrimaryDiagnosticCode_type_info = new String[]{'PrimaryDiagnosticCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CurrentFinancialClass_type_info = new String[]{'CurrentFinancialClass','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PrimaryFinancialClass_type_info = new String[]{'PrimaryFinancialClass','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateOfAdmission_type_info = new String[]{'DateOfAdmission','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InvoiceDate_type_info = new String[]{'InvoiceDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TotalAdjustments_type_info = new String[]{'TotalAdjustments','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TotalPaymentsReceived_type_info = new String[]{'TotalPaymentsReceived','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TotalPatientPaymentReceived_type_info = new String[]{'TotalPatientPaymentReceived','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TotalDueFromPatient_type_info = new String[]{'TotalDueFromPatient','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TotalDue_type_info = new String[]{'TotalDue','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AmountOfLastPatientPayment_type_info = new String[]{'AmountOfLastPatientPayment','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateOfLastPatientPayment_type_info = new String[]{'DateOfLastPatientPayment','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Guarantor_type_info = new String[]{'Guarantor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Demographic_type_info = new String[]{'Demographic','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InsuranceFinder_type_info = new String[]{'InsuranceFinder','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Eligibility_type_info = new String[]{'Eligibility','http://www.payorlogic.com/',null,'0','-1','false'};
        private String[] Credit_type_info = new String[]{'Credit','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Firstname','Lastname','Middlename','Suffix','Gender','DOB','SSN','Address1','Address2','City','State','Zip','PhoneNumber','VisitNumber','MRN','ClientId','PracticeLocation','CustomerId','ClientField1','ClientField2','ClientField3','ClientField4','ClientField5','ServiceBeginDate','ServiceEndDate','PatientProcessType','TotalCharges','Employer','SubscriberId','IndividualTransactionId','IndividualTransactionId2','applicantId','FacilityName','ServiceDepartment','PrimaryDiagnosticCode','CurrentFinancialClass','PrimaryFinancialClass','DateOfAdmission','InvoiceDate','TotalAdjustments','TotalPaymentsReceived','TotalPatientPaymentReceived','TotalDueFromPatient','TotalDue','AmountOfLastPatientPayment','DateOfLastPatientPayment','Guarantor','Demographic','InsuranceFinder','Eligibility','Credit'};
    }
    public class GetDownPayorList_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class SendEligibilityBatchesForBulkSubmissionTestResponse_element {
        public String SendEligibilityBatchesForBulkSubmissionTestResult;
        private String[] SendEligibilityBatchesForBulkSubmissionTestResult_type_info = new String[]{'SendEligibilityBatchesForBulkSubmissionTestResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'SendEligibilityBatchesForBulkSubmissionTestResult'};
    }
    public class RetrieveAvailableProductsResponse_element {
        public String RetrieveAvailableProductsResult;
        private String[] RetrieveAvailableProductsResult_type_info = new String[]{'RetrieveAvailableProductsResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RetrieveAvailableProductsResult'};
    }
    public class HealthCheckResponse_element {
        public String HealthCheckResult;
        private String[] HealthCheckResult_type_info = new String[]{'HealthCheckResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'HealthCheckResult'};
    }
    public class UpdateDeductibleJSONResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CreditResultInstallmentAccount {
        public String AccountNumber;
        public String AccountResponsibility;
        public String AccountStatus;
        public String AccountType;
        public String AccountSubType;
        public String AccountTypeDetail;
        public String BalloonPaymentAmount;
        public String BalloonPaymentDueDate;
        public String ChargeOffAmount;
        public String Collateral;
        public String ConsumerComment;
        public String NumTimes30DaysLate;
        public String NumTimes60DaysLate;
        public String NumTimes90DaysLate;
        public String CreditGrantor;
        public String CreditGrantorKob;
        public String CreditLimit;
        public String CurrentBalance;
        public String DateClosed;
        public String DateLastActivity;
        public String DateLastPayment;
        public String DateOpened;
        public String DateReported;
        public String DateVerified;
        public String DateMaxDelinquency;
        public String OriginalAmount;
        public String PastDueBalance;
        public String PaymentAmount;
        public String PaymentCount;
        public String PaymentFrequency;
        public String PaymentStatus;
        public String SoldToCreditorName;
        private String[] AccountNumber_type_info = new String[]{'AccountNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AccountResponsibility_type_info = new String[]{'AccountResponsibility','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AccountStatus_type_info = new String[]{'AccountStatus','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AccountType_type_info = new String[]{'AccountType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AccountSubType_type_info = new String[]{'AccountSubType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AccountTypeDetail_type_info = new String[]{'AccountTypeDetail','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] BalloonPaymentAmount_type_info = new String[]{'BalloonPaymentAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] BalloonPaymentDueDate_type_info = new String[]{'BalloonPaymentDueDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ChargeOffAmount_type_info = new String[]{'ChargeOffAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Collateral_type_info = new String[]{'Collateral','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ConsumerComment_type_info = new String[]{'ConsumerComment','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] NumTimes30DaysLate_type_info = new String[]{'NumTimes30DaysLate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] NumTimes60DaysLate_type_info = new String[]{'NumTimes60DaysLate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] NumTimes90DaysLate_type_info = new String[]{'NumTimes90DaysLate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CreditGrantor_type_info = new String[]{'CreditGrantor','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CreditGrantorKob_type_info = new String[]{'CreditGrantorKob','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CreditLimit_type_info = new String[]{'CreditLimit','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CurrentBalance_type_info = new String[]{'CurrentBalance','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateClosed_type_info = new String[]{'DateClosed','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateLastActivity_type_info = new String[]{'DateLastActivity','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateLastPayment_type_info = new String[]{'DateLastPayment','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateOpened_type_info = new String[]{'DateOpened','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateReported_type_info = new String[]{'DateReported','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateVerified_type_info = new String[]{'DateVerified','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateMaxDelinquency_type_info = new String[]{'DateMaxDelinquency','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] OriginalAmount_type_info = new String[]{'OriginalAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PastDueBalance_type_info = new String[]{'PastDueBalance','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PaymentAmount_type_info = new String[]{'PaymentAmount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PaymentCount_type_info = new String[]{'PaymentCount','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PaymentFrequency_type_info = new String[]{'PaymentFrequency','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PaymentStatus_type_info = new String[]{'PaymentStatus','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] SoldToCreditorName_type_info = new String[]{'SoldToCreditorName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'AccountNumber','AccountResponsibility','AccountStatus','AccountType','AccountSubType','AccountTypeDetail','BalloonPaymentAmount','BalloonPaymentDueDate','ChargeOffAmount','Collateral','ConsumerComment','NumTimes30DaysLate','NumTimes60DaysLate','NumTimes90DaysLate','CreditGrantor','CreditGrantorKob','CreditLimit','CurrentBalance','DateClosed','DateLastActivity','DateLastPayment','DateOpened','DateReported','DateVerified','DateMaxDelinquency','OriginalAmount','PastDueBalance','PaymentAmount','PaymentCount','PaymentFrequency','PaymentStatus','SoldToCreditorName'};
    }
    public class RetrieveCompanyPayorsJSON_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class DemographicResult {
        public String IncludeCredit;
        public String Status;
        public String AddressDateReported;
        public String CorrectedFirstname;
        public String CorrectedLastname;
        public String CorrectedMiddlename;
        public String CorrectedSuffix;
        public String CorrectedAddress;
        public String CorrectedCity;
        public String CorrectedState;
        public String CorrectedZip;
        public String CorrectedZip4;
        public String CorrectedSSN;
        public String CorrectedDOB;
        public Boolean NoHit;
        public String Accuracy;
        public String Warnings;
        public String RedFlags;
        public String Unit;
        public String PhoneNumber;
        public String PhoneType;
        public String County;
        public String CountyCode;
        public String Gender;
        public String ConfidenceScore;
        public Boolean Deceased;
        public PayorLogic.ArrayOfAdditionalAddress AdditionalAddresses;
        public PayorLogic.ArrayOfAdditionalAddress PreviousAddresses;
        private String[] IncludeCredit_type_info = new String[]{'IncludeCredit','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Status_type_info = new String[]{'Status','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AddressDateReported_type_info = new String[]{'AddressDateReported','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedFirstname_type_info = new String[]{'CorrectedFirstname','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedLastname_type_info = new String[]{'CorrectedLastname','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedMiddlename_type_info = new String[]{'CorrectedMiddlename','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedSuffix_type_info = new String[]{'CorrectedSuffix','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedAddress_type_info = new String[]{'CorrectedAddress','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedCity_type_info = new String[]{'CorrectedCity','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedState_type_info = new String[]{'CorrectedState','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedZip_type_info = new String[]{'CorrectedZip','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedZip4_type_info = new String[]{'CorrectedZip4','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedSSN_type_info = new String[]{'CorrectedSSN','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CorrectedDOB_type_info = new String[]{'CorrectedDOB','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] NoHit_type_info = new String[]{'NoHit','http://www.payorlogic.com/',null,'0','1','true'};
        private String[] Accuracy_type_info = new String[]{'Accuracy','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Warnings_type_info = new String[]{'Warnings','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] RedFlags_type_info = new String[]{'RedFlags','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Unit_type_info = new String[]{'Unit','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PhoneNumber_type_info = new String[]{'PhoneNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PhoneType_type_info = new String[]{'PhoneType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] County_type_info = new String[]{'County','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CountyCode_type_info = new String[]{'CountyCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Gender_type_info = new String[]{'Gender','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ConfidenceScore_type_info = new String[]{'ConfidenceScore','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Deceased_type_info = new String[]{'Deceased','http://www.payorlogic.com/',null,'0','1','true'};
        private String[] AdditionalAddresses_type_info = new String[]{'AdditionalAddresses','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PreviousAddresses_type_info = new String[]{'PreviousAddresses','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'IncludeCredit','Status','AddressDateReported','CorrectedFirstname','CorrectedLastname','CorrectedMiddlename','CorrectedSuffix','CorrectedAddress','CorrectedCity','CorrectedState','CorrectedZip','CorrectedZip4','CorrectedSSN','CorrectedDOB','NoHit','Accuracy','Warnings','RedFlags','Unit','PhoneNumber','PhoneType','County','CountyCode','Gender','ConfidenceScore','Deceased','AdditionalAddresses','PreviousAddresses'};
    }
    public class ArrayOfCreditResultTradeAccount {
        public PayorLogic.CreditResultTradeAccount[] CreditResultTradeAccount;
        private String[] CreditResultTradeAccount_type_info = new String[]{'CreditResultTradeAccount','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CreditResultTradeAccount'};
    }
    public class ClaimService {
        public String LineItemControlNumber;
        public String ProcedureCodeQualifier;
        public String ProcedureCode;
        public String ProcedureModifier1;
        public String ProcedureModifier2;
        public String ProcedureModifier3;
        public String ProcedureModifier4;
        public Decimal Amount;
        public String IdentifyingNumber;
        public Decimal Quantity;
        public String ServiceBeginDate;
        public String ServiceEndDate;
        private String[] LineItemControlNumber_type_info = new String[]{'LineItemControlNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ProcedureCodeQualifier_type_info = new String[]{'ProcedureCodeQualifier','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ProcedureCode_type_info = new String[]{'ProcedureCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ProcedureModifier1_type_info = new String[]{'ProcedureModifier1','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ProcedureModifier2_type_info = new String[]{'ProcedureModifier2','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ProcedureModifier3_type_info = new String[]{'ProcedureModifier3','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ProcedureModifier4_type_info = new String[]{'ProcedureModifier4','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Amount_type_info = new String[]{'Amount','http://www.payorlogic.com/',null,'1','1','true'};
        private String[] IdentifyingNumber_type_info = new String[]{'IdentifyingNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Quantity_type_info = new String[]{'Quantity','http://www.payorlogic.com/',null,'1','1','true'};
        private String[] ServiceBeginDate_type_info = new String[]{'ServiceBeginDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceEndDate_type_info = new String[]{'ServiceEndDate','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'LineItemControlNumber','ProcedureCodeQualifier','ProcedureCode','ProcedureModifier1','ProcedureModifier2','ProcedureModifier3','ProcedureModifier4','Amount','IdentifyingNumber','Quantity','ServiceBeginDate','ServiceEndDate'};
    }
    public class RunDeductibleManagementQueueItem_element {
        public Integer queueId;
        public Integer companyId;
        public DateTime runDate;
        private String[] queueId_type_info = new String[]{'queueId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] companyId_type_info = new String[]{'companyId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] runDate_type_info = new String[]{'runDate','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'queueId','companyId','runDate'};
    }
    public class CheckForCompletedEligibilityBatch_element {
        public Integer bulkSubmissionTestId;
        private String[] bulkSubmissionTestId_type_info = new String[]{'bulkSubmissionTestId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'bulkSubmissionTestId'};
    }
    public class ArrayOfCreditResultCollectionAccount {
        public PayorLogic.CreditResultCollectionAccount[] CreditResultCollectionAccount;
        private String[] CreditResultCollectionAccount_type_info = new String[]{'CreditResultCollectionAccount','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CreditResultCollectionAccount'};
    }
    public class RetrieveAvailablePayorsResponse_element {
        public String RetrieveAvailablePayorsResult;
        private String[] RetrieveAvailablePayorsResult_type_info = new String[]{'RetrieveAvailablePayorsResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RetrieveAvailablePayorsResult'};
    }
    public class RetrieveFileFormatsJSON_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class GetDownPayorListResponse_element {
        public String GetDownPayorListResult;
        private String[] GetDownPayorListResult_type_info = new String[]{'GetDownPayorListResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'GetDownPayorListResult'};
    }
    public class ArrayOfDailyCopay {
        public PayorLogic.DailyCopay[] Copay;
        private String[] Copay_type_info = new String[]{'Copay','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Copay'};
    }
    public class RunArxTestResponse_element {
        public Boolean RunArxTestResult;
        private String[] RunArxTestResult_type_info = new String[]{'RunArxTestResult','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RunArxTestResult'};
    }
    public class UploadBulkFile2Response_element {
        public String UploadBulkFile2Result;
        private String[] UploadBulkFile2Result_type_info = new String[]{'UploadBulkFile2Result','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'UploadBulkFile2Result'};
    }
    public class RunTestsInternalTestResponse_element {
        public String RunTestsInternalTestResult;
        private String[] RunTestsInternalTestResult_type_info = new String[]{'RunTestsInternalTestResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RunTestsInternalTestResult'};
    }
    public class RetrieveAvailableProducts_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class CheckClaimStatus_element {
        public Integer claimId;
        private String[] claimId_type_info = new String[]{'claimId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'claimId'};
    }
    public class CheckClaimStatusResponse_element {
        public String CheckClaimStatusResult;
        private String[] CheckClaimStatusResult_type_info = new String[]{'CheckClaimStatusResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CheckClaimStatusResult'};
    }
    public class AdditionalAddress {
        public String Address;
        public String Unit;
        public String City;
        public String State;
        public String Zip;
        public String Zip4;
        public String County;
        public String CountyCode;
        public String AddressDateReported;
        private String[] Address_type_info = new String[]{'Address','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Unit_type_info = new String[]{'Unit','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] City_type_info = new String[]{'City','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] State_type_info = new String[]{'State','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Zip_type_info = new String[]{'Zip','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Zip4_type_info = new String[]{'Zip4','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] County_type_info = new String[]{'County','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CountyCode_type_info = new String[]{'CountyCode','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AddressDateReported_type_info = new String[]{'AddressDateReported','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Address','Unit','City','State','Zip','Zip4','County','CountyCode','AddressDateReported'};
    }
    public class RetrieveAvailablePayorsJSONResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class RerunRetroCheckResponse_element {
        public String RerunRetroCheckResult;
        private String[] RerunRetroCheckResult_type_info = new String[]{'RerunRetroCheckResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RerunRetroCheckResult'};
    }
    public class SendEligibilityBatchesForRetroCheckResponse_element {
        public String SendEligibilityBatchesForRetroCheckResult;
        private String[] SendEligibilityBatchesForRetroCheckResult_type_info = new String[]{'SendEligibilityBatchesForRetroCheckResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'SendEligibilityBatchesForRetroCheckResult'};
    }
    public class ProcessEligibilityCheck_element {
        public String UserID;
        public String Password;
        public String Data;
        public String ResponseType;
        public String DataFormat;
        private String[] UserID_type_info = new String[]{'UserID','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Password_type_info = new String[]{'Password','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Data_type_info = new String[]{'Data','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ResponseType_type_info = new String[]{'ResponseType','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DataFormat_type_info = new String[]{'DataFormat','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'UserID','Password','Data','ResponseType','DataFormat'};
    }
    public class ClaimIdentifier {
        public String Qualifier;
        public String Identifier;
        private String[] Qualifier_type_info = new String[]{'Qualifier','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Identifier_type_info = new String[]{'Identifier','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Qualifier','Identifier'};
    }
    public class UploadBulkFileResponse_element {
        public String UploadBulkFileResult;
        private String[] UploadBulkFileResult_type_info = new String[]{'UploadBulkFileResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'UploadBulkFileResult'};
    }
    public class RunTestsWithIdResponse_element {
        public String RunTestsWithIdResult;
        private String[] RunTestsWithIdResult_type_info = new String[]{'RunTestsWithIdResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'RunTestsWithIdResult'};
    }
    public class UpdateDeductible_element {
        public Integer applicantId;
        public String transactionId;
        public String payorName;
        private String[] applicantId_type_info = new String[]{'applicantId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] payorName_type_info = new String[]{'payorName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'applicantId','transactionId','payorName'};
    }
    public class RetrieveAvailableProductsJSONResponse_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class RelatedEntity {
        public String Name;
        public PayorLogic.ArrayOfServiceType ServiceTypes;
        private String[] Name_type_info = new String[]{'Name','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ServiceTypes_type_info = new String[]{'ServiceTypes','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Name','ServiceTypes'};
    }
    public class CheckTransactionStatusResponse_element {
        public String CheckTransactionStatusResult;
        private String[] CheckTransactionStatusResult_type_info = new String[]{'CheckTransactionStatusResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'CheckTransactionStatusResult'};
    }
    public class ClaimGuarantor {
        public String Firstname;
        public String Lastname;
        public String Middlename;
        public String Suffix;
        public String Gender;
        public String DOB;
        private String[] Firstname_type_info = new String[]{'Firstname','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Lastname_type_info = new String[]{'Lastname','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Middlename_type_info = new String[]{'Middlename','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Suffix_type_info = new String[]{'Suffix','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Gender_type_info = new String[]{'Gender','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DOB_type_info = new String[]{'DOB','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Firstname','Lastname','Middlename','Suffix','Gender','DOB'};
    }
    public class UploadCustomResultsFile_element {
        public String fileBytes;
        public String fileName;
        public String transactionId;
        public Integer bulkSubmissionId;
        private String[] fileBytes_type_info = new String[]{'fileBytes','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] fileName_type_info = new String[]{'fileName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] bulkSubmissionId_type_info = new String[]{'bulkSubmissionId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'fileBytes','fileName','transactionId','bulkSubmissionId'};
    }
    public class RetrieveAvailableProductsJSON_element {
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class RerunRetroCheck_element {
        public Integer companyId;
        public Integer applicantId;
        public String transactionId;
        public Integer retroRunId;
        private String[] companyId_type_info = new String[]{'companyId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] applicantId_type_info = new String[]{'applicantId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] transactionId_type_info = new String[]{'transactionId','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] retroRunId_type_info = new String[]{'retroRunId','http://www.payorlogic.com/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'companyId','applicantId','transactionId','retroRunId'};
    }
    public class ArrayOfString {
        public String[] string_x;
        private String[] string_x_type_info = new String[]{'string','http://www.payorlogic.com/',null,'0','-1','true'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'string_x'};
    }
    public class CreditResultPublicRecord {
        public String Type_x;
        public String DocketNumber;
        public String Attorney;
        public String Plaintiff;
        public String DateReported;
        public String DateFiled;
        public String DatePaid;
        public String Assets;
        public String Liabilities;
        public String OriginalBalance;
        public String CurrentBalance;
        public String ECOADesignator;
        public String EstimatedDateOfDeletion;
        public String CourtName;
        private String[] Type_x_type_info = new String[]{'Type','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DocketNumber_type_info = new String[]{'DocketNumber','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Attorney_type_info = new String[]{'Attorney','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Plaintiff_type_info = new String[]{'Plaintiff','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateReported_type_info = new String[]{'DateReported','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DateFiled_type_info = new String[]{'DateFiled','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] DatePaid_type_info = new String[]{'DatePaid','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Assets_type_info = new String[]{'Assets','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Liabilities_type_info = new String[]{'Liabilities','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] OriginalBalance_type_info = new String[]{'OriginalBalance','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CurrentBalance_type_info = new String[]{'CurrentBalance','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ECOADesignator_type_info = new String[]{'ECOADesignator','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EstimatedDateOfDeletion_type_info = new String[]{'EstimatedDateOfDeletion','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CourtName_type_info = new String[]{'CourtName','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'Type_x','DocketNumber','Attorney','Plaintiff','DateReported','DateFiled','DatePaid','Assets','Liabilities','OriginalBalance','CurrentBalance','ECOADesignator','EstimatedDateOfDeletion','CourtName'};
    }
    public class CreditResult {
        public String DTI;
        public String ResidualIncome;
        public String fpl;
        public String IncomeDataSource;
        public String AvailableCredit;
        public String EstHouseholdIncome;
        public String EstHouseholdSize;
        public String CreditScore;
        public String CreditScoreFICO;
        public String CreditScoreRecovery;
        public String Suggestion;
        public PayorLogic.ArrayOfCreditResultTradeAccount TradeAccounts;
        public PayorLogic.ArrayOfCreditResultInstallmentAccount InstallmentAccounts;
        public PayorLogic.ArrayOfCreditResultPublicRecord PublicRecords;
        public PayorLogic.ArrayOfCreditResultCollectionAccount CollectionAccounts;
        public PayorLogic.ArrayOfCreditResultEmployment Employments;
        public PayorLogic.CreditResultaRxChange ArxData;
        private String[] DTI_type_info = new String[]{'DTI','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ResidualIncome_type_info = new String[]{'ResidualIncome','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] fpl_type_info = new String[]{'fpl','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] IncomeDataSource_type_info = new String[]{'IncomeDataSource','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] AvailableCredit_type_info = new String[]{'AvailableCredit','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EstHouseholdIncome_type_info = new String[]{'EstHouseholdIncome','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] EstHouseholdSize_type_info = new String[]{'EstHouseholdSize','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CreditScore_type_info = new String[]{'CreditScore','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CreditScoreFICO_type_info = new String[]{'CreditScoreFICO','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CreditScoreRecovery_type_info = new String[]{'CreditScoreRecovery','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Suggestion_type_info = new String[]{'Suggestion','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] TradeAccounts_type_info = new String[]{'TradeAccounts','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] InstallmentAccounts_type_info = new String[]{'InstallmentAccounts','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] PublicRecords_type_info = new String[]{'PublicRecords','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] CollectionAccounts_type_info = new String[]{'CollectionAccounts','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] Employments_type_info = new String[]{'Employments','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] ArxData_type_info = new String[]{'ArxData','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'DTI','ResidualIncome','fpl','IncomeDataSource','AvailableCredit','EstHouseholdIncome','EstHouseholdSize','CreditScore','CreditScoreFICO','CreditScoreRecovery','Suggestion','TradeAccounts','InstallmentAccounts','PublicRecords','CollectionAccounts','Employments','ArxData'};
    }
    public class UpdateDeductibleResponse_element {
        public String UpdateDeductibleResult;
        private String[] UpdateDeductibleResult_type_info = new String[]{'UpdateDeductibleResult','http://www.payorlogic.com/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.payorlogic.com/','true','false'};
        private String[] field_order_type_info = new String[]{'UpdateDeductibleResult'};
    }
    public class PLAPISoap {
        public String endpoint_x = 'https://api.payorlogic.com/plapi.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public PayorLogic.AuthHeader AuthHeader;
        private String AuthHeader_hns = 'AuthHeader=http://www.payorlogic.com/';
        private String[] ns_map_type_info = new String[]{'http://www.oopfactory.com/2011/XSL/Hipaa', 'HIPAA', 'http://www.payorlogic.com/', 'PayorLogic', 'http://microsoft.com/wsdl/types/', 'WSDLTypes'};
        public String UploadCustomResultsFile(String fileBytes,String fileName,String transactionId,Integer bulkSubmissionId) {
            PayorLogic.UploadCustomResultsFile_element request_x = new PayorLogic.UploadCustomResultsFile_element();
            request_x.fileBytes = fileBytes;
            request_x.fileName = fileName;
            request_x.transactionId = transactionId;
            request_x.bulkSubmissionId = bulkSubmissionId;
            PayorLogic.UploadCustomResultsFileResponse_element response_x;
            Map<String, PayorLogic.UploadCustomResultsFileResponse_element> response_map_x = new Map<String, PayorLogic.UploadCustomResultsFileResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/UploadCustomResultsFile',
              'http://www.payorlogic.com/',
              'UploadCustomResultsFile',
              'http://www.payorlogic.com/',
              'UploadCustomResultsFileResponse',
              'PayorLogic.UploadCustomResultsFileResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.UploadCustomResultsFileResult;
        }
        public String RunDeductibleManagementQueueItem(Integer queueId,Integer companyId,DateTime runDate) {
            PayorLogic.RunDeductibleManagementQueueItem_element request_x = new PayorLogic.RunDeductibleManagementQueueItem_element();
            request_x.queueId = queueId;
            request_x.companyId = companyId;
            request_x.runDate = runDate;
            PayorLogic.RunDeductibleManagementQueueItemResponse_element response_x;
            Map<String, PayorLogic.RunDeductibleManagementQueueItemResponse_element> response_map_x = new Map<String, PayorLogic.RunDeductibleManagementQueueItemResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RunDeductibleManagementQueueItem',
              'http://www.payorlogic.com/',
              'RunDeductibleManagementQueueItem',
              'http://www.payorlogic.com/',
              'RunDeductibleManagementQueueItemResponse',
              'PayorLogic.RunDeductibleManagementQueueItemResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RunDeductibleManagementQueueItemResult;
        }
        public String ProcessRawEligibilityRequest(String accessKey,String vendor,String raw270,Integer userId,String firstName,String lastName,Integer relatedEligibilityId) {
            PayorLogic.ProcessRawEligibilityRequest_element request_x = new PayorLogic.ProcessRawEligibilityRequest_element();
            request_x.accessKey = accessKey;
            request_x.vendor = vendor;
            request_x.raw270 = raw270;
            request_x.userId = userId;
            request_x.firstName = firstName;
            request_x.lastName = lastName;
            request_x.relatedEligibilityId = relatedEligibilityId;
            PayorLogic.ProcessRawEligibilityRequestResponse_element response_x;
            Map<String, PayorLogic.ProcessRawEligibilityRequestResponse_element> response_map_x = new Map<String, PayorLogic.ProcessRawEligibilityRequestResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/ProcessRawEligibilityRequest',
              'http://www.payorlogic.com/',
              'ProcessRawEligibilityRequest',
              'http://www.payorlogic.com/',
              'ProcessRawEligibilityRequestResponse',
              'PayorLogic.ProcessRawEligibilityRequestResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.ProcessRawEligibilityRequestResult;
        }
        public void RunTestsJSON(PayorLogic.PLRequest productData) {
            PayorLogic.RunTestsJSON_element request_x = new PayorLogic.RunTestsJSON_element();
            request_x.productData = productData;
            PayorLogic.RunTestsJSONResponse_element response_x;
            Map<String, PayorLogic.RunTestsJSONResponse_element> response_map_x = new Map<String, PayorLogic.RunTestsJSONResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RunTestsJSON',
              'http://www.payorlogic.com/',
              'RunTestsJSON',
              'http://www.payorlogic.com/',
              'RunTestsJSONResponse',
              'PayorLogic.RunTestsJSONResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public void UpdateCompanyPayorsJSON(PayorLogic.PLRequest requestData) {
            PayorLogic.UpdateCompanyPayorsJSON_element request_x = new PayorLogic.UpdateCompanyPayorsJSON_element();
            request_x.requestData = requestData;
            PayorLogic.UpdateCompanyPayorsJSONResponse_element response_x;
            Map<String, PayorLogic.UpdateCompanyPayorsJSONResponse_element> response_map_x = new Map<String, PayorLogic.UpdateCompanyPayorsJSONResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/UpdateCompanyPayorsJSON',
              'http://www.payorlogic.com/',
              'UpdateCompanyPayorsJSON',
              'http://www.payorlogic.com/',
              'UpdateCompanyPayorsJSONResponse',
              'PayorLogic.UpdateCompanyPayorsJSONResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public String CheckForCompletedRetroCheckBatches(Integer retroCheckRunId) {
            PayorLogic.CheckForCompletedRetroCheckBatches_element request_x = new PayorLogic.CheckForCompletedRetroCheckBatches_element();
            request_x.retroCheckRunId = retroCheckRunId;
            PayorLogic.CheckForCompletedRetroCheckBatchesResponse_element response_x;
            Map<String, PayorLogic.CheckForCompletedRetroCheckBatchesResponse_element> response_map_x = new Map<String, PayorLogic.CheckForCompletedRetroCheckBatchesResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/CheckForCompletedRetroCheckBatches',
              'http://www.payorlogic.com/',
              'CheckForCompletedRetroCheckBatches',
              'http://www.payorlogic.com/',
              'CheckForCompletedRetroCheckBatchesResponse',
              'PayorLogic.CheckForCompletedRetroCheckBatchesResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.CheckForCompletedRetroCheckBatchesResult;
        }
        public String GetCustomResultsFile(Integer bulkSubmissionId) {
            PayorLogic.GetCustomResultsFile_element request_x = new PayorLogic.GetCustomResultsFile_element();
            request_x.bulkSubmissionId = bulkSubmissionId;
            PayorLogic.GetCustomResultsFileResponse_element response_x;
            Map<String, PayorLogic.GetCustomResultsFileResponse_element> response_map_x = new Map<String, PayorLogic.GetCustomResultsFileResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/GetCustomResultsFile',
              'http://www.payorlogic.com/',
              'GetCustomResultsFile',
              'http://www.payorlogic.com/',
              'GetCustomResultsFileResponse',
              'PayorLogic.GetCustomResultsFileResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetCustomResultsFileResult;
        }
        public String HealthCheck() {
            PayorLogic.HealthCheck_element request_x = new PayorLogic.HealthCheck_element();
            PayorLogic.HealthCheckResponse_element response_x;
            Map<String, PayorLogic.HealthCheckResponse_element> response_map_x = new Map<String, PayorLogic.HealthCheckResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/HealthCheck',
              'http://www.payorlogic.com/',
              'HealthCheck',
              'http://www.payorlogic.com/',
              'HealthCheckResponse',
              'PayorLogic.HealthCheckResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.HealthCheckResult;
        }
        public void AddVisitLoad(String visitNumber) {
            PayorLogic.AddVisitLoad_element request_x = new PayorLogic.AddVisitLoad_element();
            request_x.visitNumber = visitNumber;
            PayorLogic.AddVisitLoadResponse_element response_x;
            Map<String, PayorLogic.AddVisitLoadResponse_element> response_map_x = new Map<String, PayorLogic.AddVisitLoadResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/AddVisitLoad',
              'http://www.payorlogic.com/',
              'AddVisitLoad',
              'http://www.payorlogic.com/',
              'AddVisitLoadResponse',
              'PayorLogic.AddVisitLoadResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public void RetrieveAvailableProductsJSON() {
            PayorLogic.RetrieveAvailableProductsJSON_element request_x = new PayorLogic.RetrieveAvailableProductsJSON_element();
            PayorLogic.RetrieveAvailableProductsJSONResponse_element response_x;
            Map<String, PayorLogic.RetrieveAvailableProductsJSONResponse_element> response_map_x = new Map<String, PayorLogic.RetrieveAvailableProductsJSONResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RetrieveAvailableProductsJSON',
              'http://www.payorlogic.com/',
              'RetrieveAvailableProductsJSON',
              'http://www.payorlogic.com/',
              'RetrieveAvailableProductsJSONResponse',
              'PayorLogic.RetrieveAvailableProductsJSONResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public String UploadBulkFile(String fileBytes,String fileName,PayorLogic.ArrayOfString tests,String fileFormat,String transactionId,String payor,String initiatedBy,Integer FTPSweeperTestConfigDetailId,Boolean runFileImmediately,PayorLogic.ArrayOfBoolean ignoreErrorThresholds,Integer companyDataMappingId) {
            PayorLogic.UploadBulkFile_element request_x = new PayorLogic.UploadBulkFile_element();
            request_x.fileBytes = fileBytes;
            request_x.fileName = fileName;
            request_x.tests = tests;
            request_x.fileFormat = fileFormat;
            request_x.transactionId = transactionId;
            request_x.payor = payor;
            request_x.initiatedBy = initiatedBy;
            request_x.FTPSweeperTestConfigDetailId = FTPSweeperTestConfigDetailId;
            request_x.runFileImmediately = runFileImmediately;
            request_x.ignoreErrorThresholds = ignoreErrorThresholds;
            request_x.companyDataMappingId = companyDataMappingId;
            PayorLogic.UploadBulkFileResponse_element response_x;
            Map<String, PayorLogic.UploadBulkFileResponse_element> response_map_x = new Map<String, PayorLogic.UploadBulkFileResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/UploadBulkFile',
              'http://www.payorlogic.com/',
              'UploadBulkFile',
              'http://www.payorlogic.com/',
              'UploadBulkFileResponse',
              'PayorLogic.UploadBulkFileResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.UploadBulkFileResult;
        }
        public String CheckForCompletedEligibilityBatch(Integer bulkSubmissionTestId) {
            PayorLogic.CheckForCompletedEligibilityBatch_element request_x = new PayorLogic.CheckForCompletedEligibilityBatch_element();
            request_x.bulkSubmissionTestId = bulkSubmissionTestId;
            PayorLogic.CheckForCompletedEligibilityBatchResponse_element response_x;
            Map<String, PayorLogic.CheckForCompletedEligibilityBatchResponse_element> response_map_x = new Map<String, PayorLogic.CheckForCompletedEligibilityBatchResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/CheckForCompletedEligibilityBatch',
              'http://www.payorlogic.com/',
              'CheckForCompletedEligibilityBatch',
              'http://www.payorlogic.com/',
              'CheckForCompletedEligibilityBatchResponse',
              'PayorLogic.CheckForCompletedEligibilityBatchResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.CheckForCompletedEligibilityBatchResult;
        }
        public String CheckClaimStatus(Integer claimId) {
            PayorLogic.CheckClaimStatus_element request_x = new PayorLogic.CheckClaimStatus_element();
            request_x.claimId = claimId;
            PayorLogic.CheckClaimStatusResponse_element response_x;
            Map<String, PayorLogic.CheckClaimStatusResponse_element> response_map_x = new Map<String, PayorLogic.CheckClaimStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/CheckClaimStatus',
              'http://www.payorlogic.com/',
              'CheckClaimStatus',
              'http://www.payorlogic.com/',
              'CheckClaimStatusResponse',
              'PayorLogic.CheckClaimStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.CheckClaimStatusResult;
        }
        public void CheckClaimsStatusJSON(PayorLogic.PLClaimRequest productData) {
            PayorLogic.CheckClaimsStatusJSON_element request_x = new PayorLogic.CheckClaimsStatusJSON_element();
            request_x.productData = productData;
            PayorLogic.CheckClaimsStatusJSONResponse_element response_x;
            Map<String, PayorLogic.CheckClaimsStatusJSONResponse_element> response_map_x = new Map<String, PayorLogic.CheckClaimsStatusJSONResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/CheckClaimsStatusJSON',
              'http://www.payorlogic.com/',
              'CheckClaimsStatusJSON',
              'http://www.payorlogic.com/',
              'CheckClaimsStatusJSONResponse',
              'PayorLogic.CheckClaimsStatusJSONResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public String CheckTransactionStatus(String transactionId) {
            PayorLogic.CheckTransactionStatus_element request_x = new PayorLogic.CheckTransactionStatus_element();
            request_x.transactionId = transactionId;
            PayorLogic.CheckTransactionStatusResponse_element response_x;
            Map<String, PayorLogic.CheckTransactionStatusResponse_element> response_map_x = new Map<String, PayorLogic.CheckTransactionStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/CheckTransactionStatus',
              'http://www.payorlogic.com/',
              'CheckTransactionStatus',
              'http://www.payorlogic.com/',
              'CheckTransactionStatusResponse',
              'PayorLogic.CheckTransactionStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.CheckTransactionStatusResult;
        }
        public String SendEligibilityBatchesForRetroCheck(Integer retroCheckRunId) {
            PayorLogic.SendEligibilityBatchesForRetroCheck_element request_x = new PayorLogic.SendEligibilityBatchesForRetroCheck_element();
            request_x.retroCheckRunId = retroCheckRunId;
            PayorLogic.SendEligibilityBatchesForRetroCheckResponse_element response_x;
            Map<String, PayorLogic.SendEligibilityBatchesForRetroCheckResponse_element> response_map_x = new Map<String, PayorLogic.SendEligibilityBatchesForRetroCheckResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/SendEligibilityBatchesForRetroCheck',
              'http://www.payorlogic.com/',
              'SendEligibilityBatchesForRetroCheck',
              'http://www.payorlogic.com/',
              'SendEligibilityBatchesForRetroCheckResponse',
              'PayorLogic.SendEligibilityBatchesForRetroCheckResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.SendEligibilityBatchesForRetroCheckResult;
        }
        public void RetrieveAvailablePayorsJSON() {
            PayorLogic.RetrieveAvailablePayorsJSON_element request_x = new PayorLogic.RetrieveAvailablePayorsJSON_element();
            PayorLogic.RetrieveAvailablePayorsJSONResponse_element response_x;
            Map<String, PayorLogic.RetrieveAvailablePayorsJSONResponse_element> response_map_x = new Map<String, PayorLogic.RetrieveAvailablePayorsJSONResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RetrieveAvailablePayorsJSON',
              'http://www.payorlogic.com/',
              'RetrieveAvailablePayorsJSON',
              'http://www.payorlogic.com/',
              'RetrieveAvailablePayorsJSONResponse',
              'PayorLogic.RetrieveAvailablePayorsJSONResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public String RunTestsBulkInternal(String processQueueId,Integer companyId,PayorLogic.ArrayOfString tests,String transactionId,Boolean fromBatch) {
            PayorLogic.RunTestsBulkInternal_element request_x = new PayorLogic.RunTestsBulkInternal_element();
            request_x.processQueueId = processQueueId;
            request_x.companyId = companyId;
            request_x.tests = tests;
            request_x.transactionId = transactionId;
            request_x.fromBatch = fromBatch;
            PayorLogic.RunTestsBulkInternalResponse_element response_x;
            Map<String, PayorLogic.RunTestsBulkInternalResponse_element> response_map_x = new Map<String, PayorLogic.RunTestsBulkInternalResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RunTestsBulkInternal',
              'http://www.payorlogic.com/',
              'RunTestsBulkInternal',
              'http://www.payorlogic.com/',
              'RunTestsBulkInternalResponse',
              'PayorLogic.RunTestsBulkInternalResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RunTestsBulkInternalResult;
        }
        public String RetrieveAvailablePayors() {
            PayorLogic.RetrieveAvailablePayors_element request_x = new PayorLogic.RetrieveAvailablePayors_element();
            PayorLogic.RetrieveAvailablePayorsResponse_element response_x;
            Map<String, PayorLogic.RetrieveAvailablePayorsResponse_element> response_map_x = new Map<String, PayorLogic.RetrieveAvailablePayorsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RetrieveAvailablePayors',
              'http://www.payorlogic.com/',
              'RetrieveAvailablePayors',
              'http://www.payorlogic.com/',
              'RetrieveAvailablePayorsResponse',
              'PayorLogic.RetrieveAvailablePayorsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RetrieveAvailablePayorsResult;
        }
        public String AddClaim(String claim837) {
            PayorLogic.AddClaim_element request_x = new PayorLogic.AddClaim_element();
            request_x.claim837 = claim837;
            PayorLogic.AddClaimResponse_element response_x;
            Map<String, PayorLogic.AddClaimResponse_element> response_map_x = new Map<String, PayorLogic.AddClaimResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/AddClaim',
              'http://www.payorlogic.com/',
              'AddClaim',
              'http://www.payorlogic.com/',
              'AddClaimResponse',
              'PayorLogic.AddClaimResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.AddClaimResult;
        }
        public String UpdateCompanyPayors(String requestData) {
            PayorLogic.UpdateCompanyPayors_element request_x = new PayorLogic.UpdateCompanyPayors_element();
            request_x.requestData = requestData;
            PayorLogic.UpdateCompanyPayorsResponse_element response_x;
            Map<String, PayorLogic.UpdateCompanyPayorsResponse_element> response_map_x = new Map<String, PayorLogic.UpdateCompanyPayorsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/UpdateCompanyPayors',
              'http://www.payorlogic.com/',
              'UpdateCompanyPayors',
              'http://www.payorlogic.com/',
              'UpdateCompanyPayorsResponse',
              'PayorLogic.UpdateCompanyPayorsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.UpdateCompanyPayorsResult;
        }
        public String RunTestsInternalTest() {
            PayorLogic.RunTestsInternalTest_element request_x = new PayorLogic.RunTestsInternalTest_element();
            PayorLogic.RunTestsInternalTestResponse_element response_x;
            Map<String, PayorLogic.RunTestsInternalTestResponse_element> response_map_x = new Map<String, PayorLogic.RunTestsInternalTestResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RunTestsInternalTest',
              'http://www.payorlogic.com/',
              'RunTestsInternalTest',
              'http://www.payorlogic.com/',
              'RunTestsInternalTestResponse',
              'PayorLogic.RunTestsInternalTestResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RunTestsInternalTestResult;
        }
        public String CheckExistingClaimsStatus(Integer statusCheckClaimId) {
            PayorLogic.CheckExistingClaimsStatus_element request_x = new PayorLogic.CheckExistingClaimsStatus_element();
            request_x.statusCheckClaimId = statusCheckClaimId;
            PayorLogic.CheckExistingClaimsStatusResponse_element response_x;
            Map<String, PayorLogic.CheckExistingClaimsStatusResponse_element> response_map_x = new Map<String, PayorLogic.CheckExistingClaimsStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/CheckExistingClaimsStatus',
              'http://www.payorlogic.com/',
              'CheckExistingClaimsStatus',
              'http://www.payorlogic.com/',
              'CheckExistingClaimsStatusResponse',
              'PayorLogic.CheckExistingClaimsStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.CheckExistingClaimsStatusResult;
        }
        public String SendEligibilityBatchesForBulkSubmissionTest(Integer bulkSubmissionTestId) {
            PayorLogic.SendEligibilityBatchesForBulkSubmissionTest_element request_x = new PayorLogic.SendEligibilityBatchesForBulkSubmissionTest_element();
            request_x.bulkSubmissionTestId = bulkSubmissionTestId;
            PayorLogic.SendEligibilityBatchesForBulkSubmissionTestResponse_element response_x;
            Map<String, PayorLogic.SendEligibilityBatchesForBulkSubmissionTestResponse_element> response_map_x = new Map<String, PayorLogic.SendEligibilityBatchesForBulkSubmissionTestResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/SendEligibilityBatchesForBulkSubmissionTest',
              'http://www.payorlogic.com/',
              'SendEligibilityBatchesForBulkSubmissionTest',
              'http://www.payorlogic.com/',
              'SendEligibilityBatchesForBulkSubmissionTestResponse',
              'PayorLogic.SendEligibilityBatchesForBulkSubmissionTestResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.SendEligibilityBatchesForBulkSubmissionTestResult;
        }
        public String ProcessRawClaimsStatusRequest(String accessKey,String raw276,Integer userId,String firstName,String lastName) {
            PayorLogic.ProcessRawClaimsStatusRequest_element request_x = new PayorLogic.ProcessRawClaimsStatusRequest_element();
            request_x.accessKey = accessKey;
            request_x.raw276 = raw276;
            request_x.userId = userId;
            request_x.firstName = firstName;
            request_x.lastName = lastName;
            PayorLogic.ProcessRawClaimsStatusRequestResponse_element response_x;
            Map<String, PayorLogic.ProcessRawClaimsStatusRequestResponse_element> response_map_x = new Map<String, PayorLogic.ProcessRawClaimsStatusRequestResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/ProcessRawClaimsStatusRequest',
              'http://www.payorlogic.com/',
              'ProcessRawClaimsStatusRequest',
              'http://www.payorlogic.com/',
              'ProcessRawClaimsStatusRequestResponse',
              'PayorLogic.ProcessRawClaimsStatusRequestResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.ProcessRawClaimsStatusRequestResult;
        }
        public Boolean RunArxTest(Integer applicantId,Integer requestId) {
            PayorLogic.RunArxTest_element request_x = new PayorLogic.RunArxTest_element();
            request_x.applicantId = applicantId;
            request_x.requestId = requestId;
            PayorLogic.RunArxTestResponse_element response_x;
            Map<String, PayorLogic.RunArxTestResponse_element> response_map_x = new Map<String, PayorLogic.RunArxTestResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RunArxTest',
              'http://www.payorlogic.com/',
              'RunArxTest',
              'http://www.payorlogic.com/',
              'RunArxTestResponse',
              'PayorLogic.RunArxTestResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RunArxTestResult;
        }
        public String GetDownPayorList() {
            PayorLogic.GetDownPayorList_element request_x = new PayorLogic.GetDownPayorList_element();
            PayorLogic.GetDownPayorListResponse_element response_x;
            Map<String, PayorLogic.GetDownPayorListResponse_element> response_map_x = new Map<String, PayorLogic.GetDownPayorListResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/GetDownPayorList',
              'http://www.payorlogic.com/',
              'GetDownPayorList',
              'http://www.payorlogic.com/',
              'GetDownPayorListResponse',
              'PayorLogic.GetDownPayorListResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetDownPayorListResult;
        }
        public String ProcessEligibilityCheck(String UserID,String Password,String Data,String ResponseType,String DataFormat) {
            PayorLogic.ProcessEligibilityCheck_element request_x = new PayorLogic.ProcessEligibilityCheck_element();
            request_x.UserID = UserID;
            request_x.Password = Password;
            request_x.Data = Data;
            request_x.ResponseType = ResponseType;
            request_x.DataFormat = DataFormat;
            PayorLogic.ProcessEligibilityCheckResponse_element response_x;
            Map<String, PayorLogic.ProcessEligibilityCheckResponse_element> response_map_x = new Map<String, PayorLogic.ProcessEligibilityCheckResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/ProcessEligibilityCheck',
              'http://www.payorlogic.com/',
              'ProcessEligibilityCheck',
              'http://www.payorlogic.com/',
              'ProcessEligibilityCheckResponse',
              'PayorLogic.ProcessEligibilityCheckResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.ProcessEligibilityCheckResult;
        }
        public void CheckTransactionStatusJSON(String transactionId) {
            PayorLogic.CheckTransactionStatusJSON_element request_x = new PayorLogic.CheckTransactionStatusJSON_element();
            request_x.transactionId = transactionId;
            PayorLogic.CheckTransactionStatusJSONResponse_element response_x;
            Map<String, PayorLogic.CheckTransactionStatusJSONResponse_element> response_map_x = new Map<String, PayorLogic.CheckTransactionStatusJSONResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/CheckTransactionStatusJSON',
              'http://www.payorlogic.com/',
              'CheckTransactionStatusJSON',
              'http://www.payorlogic.com/',
              'CheckTransactionStatusJSONResponse',
              'PayorLogic.CheckTransactionStatusJSONResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public String UploadCustomerFile(Integer companyId,String transactionId,String fileBytes,String fileName,String ftpFolderName,Integer userId,String ipAddress) {
            PayorLogic.UploadCustomerFile_element request_x = new PayorLogic.UploadCustomerFile_element();
            request_x.companyId = companyId;
            request_x.transactionId = transactionId;
            request_x.fileBytes = fileBytes;
            request_x.fileName = fileName;
            request_x.ftpFolderName = ftpFolderName;
            request_x.userId = userId;
            request_x.ipAddress = ipAddress;
            PayorLogic.UploadCustomerFileResponse_element response_x;
            Map<String, PayorLogic.UploadCustomerFileResponse_element> response_map_x = new Map<String, PayorLogic.UploadCustomerFileResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/UploadCustomerFile',
              'http://www.payorlogic.com/',
              'UploadCustomerFile',
              'http://www.payorlogic.com/',
              'UploadCustomerFileResponse',
              'PayorLogic.UploadCustomerFileResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.UploadCustomerFileResult;
        }
        public void RetrieveFileFormatsJSON() {
            PayorLogic.RetrieveFileFormatsJSON_element request_x = new PayorLogic.RetrieveFileFormatsJSON_element();
            PayorLogic.RetrieveFileFormatsJSONResponse_element response_x;
            Map<String, PayorLogic.RetrieveFileFormatsJSONResponse_element> response_map_x = new Map<String, PayorLogic.RetrieveFileFormatsJSONResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RetrieveFileFormatsJSON',
              'http://www.payorlogic.com/',
              'RetrieveFileFormatsJSON',
              'http://www.payorlogic.com/',
              'RetrieveFileFormatsJSONResponse',
              'PayorLogic.RetrieveFileFormatsJSONResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public String RetrieveCompanyPayors() {
            PayorLogic.RetrieveCompanyPayors_element request_x = new PayorLogic.RetrieveCompanyPayors_element();
            PayorLogic.RetrieveCompanyPayorsResponse_element response_x;
            Map<String, PayorLogic.RetrieveCompanyPayorsResponse_element> response_map_x = new Map<String, PayorLogic.RetrieveCompanyPayorsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RetrieveCompanyPayors',
              'http://www.payorlogic.com/',
              'RetrieveCompanyPayors',
              'http://www.payorlogic.com/',
              'RetrieveCompanyPayorsResponse',
              'PayorLogic.RetrieveCompanyPayorsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RetrieveCompanyPayorsResult;
        }
        public String RunTestsInternal(Integer companyId,Integer applicantId,PayorLogic.ArrayOfString tests,String transactionId,String payorName,String payorNameAdvancedVerifier,String npiCode,String npiPractice,Boolean verboseResponse,Integer bulkSubmissionTestQueueId,Integer retryRequestId,PayorLogic.ArrayOfString retryPayors,String originator,Boolean sendDemoWithoutCorrections,String subscriberId) {
            PayorLogic.RunTestsInternal_element request_x = new PayorLogic.RunTestsInternal_element();
            request_x.companyId = companyId;
            request_x.applicantId = applicantId;
            request_x.tests = tests;
            request_x.transactionId = transactionId;
            request_x.payorName = payorName;
            request_x.payorNameAdvancedVerifier = payorNameAdvancedVerifier;
            request_x.npiCode = npiCode;
            request_x.npiPractice = npiPractice;
            request_x.verboseResponse = verboseResponse;
            request_x.bulkSubmissionTestQueueId = bulkSubmissionTestQueueId;
            request_x.retryRequestId = retryRequestId;
            request_x.retryPayors = retryPayors;
            request_x.originator = originator;
            request_x.sendDemoWithoutCorrections = sendDemoWithoutCorrections;
            request_x.subscriberId = subscriberId;
            PayorLogic.RunTestsInternalResponse_element response_x;
            Map<String, PayorLogic.RunTestsInternalResponse_element> response_map_x = new Map<String, PayorLogic.RunTestsInternalResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RunTestsInternal',
              'http://www.payorlogic.com/',
              'RunTestsInternal',
              'http://www.payorlogic.com/',
              'RunTestsInternalResponse',
              'PayorLogic.RunTestsInternalResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RunTestsInternalResult;
        }
        public String RunTests(String productData) {
            PayorLogic.RunTests_element request_x = new PayorLogic.RunTests_element();
            request_x.productData = productData;
            PayorLogic.RunTestsResponse_element response_x;
            Map<String, PayorLogic.RunTestsResponse_element> response_map_x = new Map<String, PayorLogic.RunTestsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RunTests',
              'http://www.payorlogic.com/',
              'RunTests',
              'http://www.payorlogic.com/',
              'RunTestsResponse',
              'PayorLogic.RunTestsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RunTestsResult;
        }
        public void UpdateDeductibleJSON(Integer applicantId,String transactionId,String payorName) {
            PayorLogic.UpdateDeductibleJSON_element request_x = new PayorLogic.UpdateDeductibleJSON_element();
            request_x.applicantId = applicantId;
            request_x.transactionId = transactionId;
            request_x.payorName = payorName;
            PayorLogic.UpdateDeductibleJSONResponse_element response_x;
            Map<String, PayorLogic.UpdateDeductibleJSONResponse_element> response_map_x = new Map<String, PayorLogic.UpdateDeductibleJSONResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/UpdateDeductibleJSON',
              'http://www.payorlogic.com/',
              'UpdateDeductibleJSON',
              'http://www.payorlogic.com/',
              'UpdateDeductibleJSONResponse',
              'PayorLogic.UpdateDeductibleJSONResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public String RerunRetroCheck(Integer companyId,Integer applicantId,String transactionId,Integer retroRunId) {
            PayorLogic.RerunRetroCheck_element request_x = new PayorLogic.RerunRetroCheck_element();
            request_x.companyId = companyId;
            request_x.applicantId = applicantId;
            request_x.transactionId = transactionId;
            request_x.retroRunId = retroRunId;
            PayorLogic.RerunRetroCheckResponse_element response_x;
            Map<String, PayorLogic.RerunRetroCheckResponse_element> response_map_x = new Map<String, PayorLogic.RerunRetroCheckResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RerunRetroCheck',
              'http://www.payorlogic.com/',
              'RerunRetroCheck',
              'http://www.payorlogic.com/',
              'RerunRetroCheckResponse',
              'PayorLogic.RerunRetroCheckResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RerunRetroCheckResult;
        }
        public String RetrieveAvailableProducts() {
            PayorLogic.RetrieveAvailableProducts_element request_x = new PayorLogic.RetrieveAvailableProducts_element();
            PayorLogic.RetrieveAvailableProductsResponse_element response_x;
            Map<String, PayorLogic.RetrieveAvailableProductsResponse_element> response_map_x = new Map<String, PayorLogic.RetrieveAvailableProductsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RetrieveAvailableProducts',
              'http://www.payorlogic.com/',
              'RetrieveAvailableProducts',
              'http://www.payorlogic.com/',
              'RetrieveAvailableProductsResponse',
              'PayorLogic.RetrieveAvailableProductsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RetrieveAvailableProductsResult;
        }
        public String RunTestsBulk(String processQueueId,PayorLogic.ArrayOfString tests,String transactionId) {
            PayorLogic.RunTestsBulk_element request_x = new PayorLogic.RunTestsBulk_element();
            request_x.processQueueId = processQueueId;
            request_x.tests = tests;
            request_x.transactionId = transactionId;
            PayorLogic.RunTestsBulkResponse_element response_x;
            Map<String, PayorLogic.RunTestsBulkResponse_element> response_map_x = new Map<String, PayorLogic.RunTestsBulkResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RunTestsBulk',
              'http://www.payorlogic.com/',
              'RunTestsBulk',
              'http://www.payorlogic.com/',
              'RunTestsBulkResponse',
              'PayorLogic.RunTestsBulkResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RunTestsBulkResult;
        }
        public String UpdateDeductible(Integer applicantId,String transactionId,String payorName) {
            PayorLogic.UpdateDeductible_element request_x = new PayorLogic.UpdateDeductible_element();
            request_x.applicantId = applicantId;
            request_x.transactionId = transactionId;
            request_x.payorName = payorName;
            PayorLogic.UpdateDeductibleResponse_element response_x;
            Map<String, PayorLogic.UpdateDeductibleResponse_element> response_map_x = new Map<String, PayorLogic.UpdateDeductibleResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/UpdateDeductible',
              'http://www.payorlogic.com/',
              'UpdateDeductible',
              'http://www.payorlogic.com/',
              'UpdateDeductibleResponse',
              'PayorLogic.UpdateDeductibleResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.UpdateDeductibleResult;
        }
        public String CheckClaimsStatus(String productData) {
            PayorLogic.CheckClaimsStatus_element request_x = new PayorLogic.CheckClaimsStatus_element();
            request_x.productData = productData;
            PayorLogic.CheckClaimsStatusResponse_element response_x;
            Map<String, PayorLogic.CheckClaimsStatusResponse_element> response_map_x = new Map<String, PayorLogic.CheckClaimsStatusResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/CheckClaimsStatus',
              'http://www.payorlogic.com/',
              'CheckClaimsStatus',
              'http://www.payorlogic.com/',
              'CheckClaimsStatusResponse',
              'PayorLogic.CheckClaimsStatusResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.CheckClaimsStatusResult;
        }
        public void RetrieveCompanyPayorsJSON() {
            PayorLogic.RetrieveCompanyPayorsJSON_element request_x = new PayorLogic.RetrieveCompanyPayorsJSON_element();
            PayorLogic.RetrieveCompanyPayorsJSONResponse_element response_x;
            Map<String, PayorLogic.RetrieveCompanyPayorsJSONResponse_element> response_map_x = new Map<String, PayorLogic.RetrieveCompanyPayorsJSONResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RetrieveCompanyPayorsJSON',
              'http://www.payorlogic.com/',
              'RetrieveCompanyPayorsJSON',
              'http://www.payorlogic.com/',
              'RetrieveCompanyPayorsJSONResponse',
              'PayorLogic.RetrieveCompanyPayorsJSONResponse_element'}
            );
            response_x = response_map_x.get('response_x');
        }
        public String RunTestsWithId(Integer applicantId,PayorLogic.ArrayOfString tests,String transactionId,String payorName,String payorNameAdvancedVerifier) {
            PayorLogic.RunTestsWithId_element request_x = new PayorLogic.RunTestsWithId_element();
            request_x.applicantId = applicantId;
            request_x.tests = tests;
            request_x.transactionId = transactionId;
            request_x.payorName = payorName;
            request_x.payorNameAdvancedVerifier = payorNameAdvancedVerifier;
            PayorLogic.RunTestsWithIdResponse_element response_x;
            Map<String, PayorLogic.RunTestsWithIdResponse_element> response_map_x = new Map<String, PayorLogic.RunTestsWithIdResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RunTestsWithId',
              'http://www.payorlogic.com/',
              'RunTestsWithId',
              'http://www.payorlogic.com/',
              'RunTestsWithIdResponse',
              'PayorLogic.RunTestsWithIdResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RunTestsWithIdResult;
        }
        public String UploadBulkFile2(String fileBytes,String fileName,PayorLogic.ArrayOfString tests,String fileFormat,String transactionId,String payor,String payorAdvanceVerifier,String initiatedBy,Integer FTPSweeperTestConfigDetailId,Boolean runFileImmediately,PayorLogic.ArrayOfBoolean ignoreErrorThresholds,Integer companyDataMappingId,Boolean ignoreDuplicateVisits) {
            PayorLogic.UploadBulkFile2_element request_x = new PayorLogic.UploadBulkFile2_element();
            request_x.fileBytes = fileBytes;
            request_x.fileName = fileName;
            request_x.tests = tests;
            request_x.fileFormat = fileFormat;
            request_x.transactionId = transactionId;
            request_x.payor = payor;
            request_x.payorAdvanceVerifier = payorAdvanceVerifier;
            request_x.initiatedBy = initiatedBy;
            request_x.FTPSweeperTestConfigDetailId = FTPSweeperTestConfigDetailId;
            request_x.runFileImmediately = runFileImmediately;
            request_x.ignoreErrorThresholds = ignoreErrorThresholds;
            request_x.companyDataMappingId = companyDataMappingId;
            request_x.ignoreDuplicateVisits = ignoreDuplicateVisits;
            PayorLogic.UploadBulkFile2Response_element response_x;
            Map<String, PayorLogic.UploadBulkFile2Response_element> response_map_x = new Map<String, PayorLogic.UploadBulkFile2Response_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/UploadBulkFile2',
              'http://www.payorlogic.com/',
              'UploadBulkFile2',
              'http://www.payorlogic.com/',
              'UploadBulkFile2Response',
              'PayorLogic.UploadBulkFile2Response_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.UploadBulkFile2Result;
        }
        public String RetrieveFileFormats() {
            PayorLogic.RetrieveFileFormats_element request_x = new PayorLogic.RetrieveFileFormats_element();
            PayorLogic.RetrieveFileFormatsResponse_element response_x;
            Map<String, PayorLogic.RetrieveFileFormatsResponse_element> response_map_x = new Map<String, PayorLogic.RetrieveFileFormatsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.payorlogic.com/RetrieveFileFormats',
              'http://www.payorlogic.com/',
              'RetrieveFileFormats',
              'http://www.payorlogic.com/',
              'RetrieveFileFormatsResponse',
              'PayorLogic.RetrieveFileFormatsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RetrieveFileFormatsResult;
        }
    }
}