/* ================================================
 * @Class Name => CreditInquiryHttpErrorHandler
 * @author => Admin
 * @purpose=> This class will execute the HttpRequest to Equifax
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class CreditInquiryHttpErrorHandler {
    
    // public static final String cerr = 'CERR                      SC      102C                        0                           0                                       ';
    /* ================================================
    * @Method Name => handleError
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static Map<String, String> handleError(String cerr, String serviceName){
        List<wlrcm__CodedErrorMessageLayout__mdt> codedErrorMessageLayout = getCodedErrorMessageLayout(serviceName);
        Map<String, wlrcm__ErrorCode__mdt> errorCodes = getErrorCodes(serviceName);
        Set<String> errorCodeFromResponse = getErrorCodeFromResponse(cerr, codedErrorMessageLayout);
        Map<String, String> codedErrorMessage = getCodedErrorMessage(errorCodes, errorCodeFromResponse);
        return codedErrorMessage;
    }
    /* ================================================
    * @Method Name => getCodedErrorMessage
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static Map<String, String> getCodedErrorMessage(Map<String, wlrcm__ErrorCode__mdt> errorCodes, Set<String> errorCodeFromResponse){
        Map<String, String> codedErrorMessage = new Map<String, String>();
        for(String str : errorCodeFromResponse){
            if(errorCodes.containsKey(str)){
                codedErrorMessage.put(str, String.valueOf(errorCodes.get(str).wlrcm__Description__c));
            }
        }
        return codedErrorMessage;
    }
    /* ================================================
    * @Method Name => getErrorCodeFromResponse
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static Set<String> getErrorCodeFromResponse(String cerr, List<wlrcm__CodedErrorMessageLayout__mdt> codedErrorMessageLayout){
       Set<String> errorCodeFromResponse = new Set<String>();
        for(wlrcm__CodedErrorMessageLayout__mdt crc : codedErrorMessageLayout){
            if(cerr.mid(Integer.valueOf(crc.wlrcm__BytePosition__c),Integer.valueOf(crc.wlrcm__NumberOfBytes__c)) != NULL){
                errorCodeFromResponse.add(cerr.mid(Integer.valueOf(crc.wlrcm__BytePosition__c),Integer.valueOf(crc.wlrcm__NumberOfBytes__c)));
            } 
        }

        return errorCodeFromResponse;
    }
    /* ================================================
    * @Method Name => getCodedErrorMessageLayout
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static List<wlrcm__CodedErrorMessageLayout__mdt> getCodedErrorMessageLayout(String serviceName){

        List<wlrcm__CodedErrorMessageLayout__mdt> codedErrorMessageLayout = [SELECT Id, wlrcm__BytePosition__c, wlrcm__NumberOfBytes__c, wlrcm__FieldType__c, 
                                                                        wlrcm__Align__c, wlrcm__Format__c, wlrcm__Description__c, wlrcm__RecordCode__c, wlrcm__ServiceName__c 
                                                                        FROM wlrcm__CodedErrorMessageLayout__mdt
                                                                        WHERE wlrcm__ServiceName__c =: serviceName LIMIT 50000];
        return codedErrorMessageLayout;
    }
    /* ================================================
    * @Method Name => getErrorCodes
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static Map<String, wlrcm__ErrorCode__mdt> getErrorCodes(String serviceName){
        Map<String, wlrcm__ErrorCode__mdt> errorCodes = new Map<String, wlrcm__ErrorCode__mdt>();
        List<wlrcm__ErrorCode__mdt> errorCodeList = [SELECT Id, wlrcm__CodeType__c, wlrcm__Code__c, wlrcm__Description__c, 
                                                                        wlrcm__SegmentError__c, wlrcm__ServiceName__c 
                                                                        FROM wlrcm__ErrorCode__mdt
                                                                        WHERE wlrcm__ServiceName__c =: serviceName LIMIT 50000];
        for(wlrcm__ErrorCode__mdt ec : errorCodeList){
            errorCodes.put(ec.wlrcm__Code__c, ec);
        }
        return errorCodes;
    }
}