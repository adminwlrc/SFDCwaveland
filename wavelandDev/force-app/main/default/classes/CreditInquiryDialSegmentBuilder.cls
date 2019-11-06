/* ================================================
 * @Class Name => CreditInquiryDialSegmentBuilder
 * @author => Admin
 * @purpose=> This class will return the DIAL segment needed in the integration with Equifax
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class CreditInquiryDialSegmentBuilder {
     private final static String DIAL = 'DIAL';
    private final static String BLANK = 'BLANK';
    private final static String SPACE = ' ';
    private final static String RIGTH = 'R';  
    /* ================================================
    * @Method Name => buildDIAL
    * @author => Admin
    * @purpose=> This method will build the DIAL segment needed in the integration with Equifax 
    * @created date=> 
    ================================================*/
    public static String buildDIAL(String serviceName){
        
        String dialStr;
        List<wlrcm__InquiryDIALSegmentProcedure__mdt> inquiryDIALSegmentProcedure = getInquiryDIALSegmentProcedure(serviceName);
        List<String> dialSegementvalues = getInquiryDIALSegementValues(serviceName, inquiryDIALSegmentProcedure);
        System.debug('Check dialSegementvalues : '+ dialSegementvalues);
        dialStr = DIAL;
        for(String str : dialSegementvalues){
            dialStr += str;
        }
        dialStr = addPadding(dialStr,Integer.valueOf(inquiryDIALSegmentProcedure[0].wlrcm__FillerBytes__c) + dialStr.length(), null);
        return dialStr;
    }
    /* ================================================
    * @Method Name => getInquiryDIALSegementValues
    * @author => Admin
    * @purpose=> 
    * @created date=> 
    ================================================*/
    public static List<String> getInquiryDIALSegementValues(String serviceName, List<wlrcm__InquiryDIALSegmentProcedure__mdt> inquiryDIALSegmentProcedure){
        Set<String> inquiryDialFieldSet = new Set<String>{'wlrcm__CustomerNumber__c','wlrcm__SecurityCode__c','wlrcm__ProtocolIndicator__c','wlrcm__CustomerCode__c',
                                                    'wlrcm__InquiryFormat__c', 'wlrcm__OutputFormat__c','wlrcm__MultipleReportIndicatorCodes__c',
                                                    'wlrcm__FileSelectionLevel__c','wlrcm__OptionalField__c','wlrcm__Filler__c', 'wlrcm__PlainLanguageReport__c'
                                                    };

        List<String> dialSegementvalues = new List<String>();
       
        for(wlrcm__InquiryDIALSegmentProcedure__mdt rsp : inquiryDIALSegmentProcedure){
            for(String str : inquiryDialFieldSet){
                if(rsp.get(str) != NULL){
                    dialSegementvalues.add(String.valueOf(rsp.get(str)));
                }
            }
        }

        return dialSegementvalues;
    }
    /* ================================================
    * @Method Name => getInquiryDIALSegmentProcedure
    * @author => Admin
    * @purpose=> Queries the DIAL segment elements
    * @created date=> 
    ================================================*/
    public static List<wlrcm__InquiryDIALSegmentProcedure__mdt> getInquiryDIALSegmentProcedure(String serviceName){

        List<wlrcm__InquiryDIALSegmentProcedure__mdt> inquiryDIALSegmentProcedure = [SELECT Id,wlrcm__CustomerCode__c,wlrcm__CustomerNumber__c,
                                        wlrcm__FileSelectionLevel__c,wlrcm__FillerBytes__c,wlrcm__Filler__c, 
                                        wlrcm__InquiryFormat__c, wlrcm__MultipleReportIndicatorCodes__c,
                                        wlrcm__OptionalField__c,wlrcm__OutputFormat__c,wlrcm__PlainLanguageReport__c, 
                                        wlrcm__ProtocolIndicator__c,wlrcm__SecurityCode__c 
                                        FROM wlrcm__InquiryDIALSegmentProcedure__mdt 
                                        WHERE wlrcm__ServiceName__c =: serviceName 
                                        LIMIT 1];
        return inquiryDIALSegmentProcedure;       
	}
    /* ================================================
    * @Method Name => getInquiryDIALSegmentProcedure
    * @author => Admin
    * @purpose=> Adds padding to the string 
    * @created date=> 
    ================================================*/
    public static String addPadding(String value, Integer numberOfBytes, String align){
        if(align == RIGTH){
           value = value.leftPad(numberOfBytes);
        }else{
           value = value.rightPad(numberOfBytes,'+');
        }
        return value;       
	}
}