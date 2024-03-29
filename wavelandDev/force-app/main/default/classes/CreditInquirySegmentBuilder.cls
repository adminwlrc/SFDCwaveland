/* ================================================
 * @Class Name => CreditInquirySegmentHandler
 * @author => Admin
 * @purpose=> This method will build the inquiry resuest segment needed in the integration with Equifax
 * @created date=> 
 * @last modified date=> 
 * @last modified by => 
 ================================================*/
public with sharing class CreditInquirySegmentBuilder {
    // public final static String inquiry = 'DIAL496MZ00362@U22ISTS520P1B  P         IDNT                    496MZ00362@U2 I0P  666341002DAPHNE         E              AAPRICOT                   10021960                                                                                                     01AD2           COPPERHEAD                VWDECATUR             GA30035                   ';

    /* ================================================
    * @Method Name => getRecordCodeWithResultSegment
    * @author => Admin
    * @purpose=> Main, it will set test values from the wlrcm__Value__c field in the wlrcm__InquiryLayoutSegment__mdt
    * @created date=> 
    ================================================*/
    public static String buildInquiry(String serviceName, Id contactId){
        String buildInquiry='';
        Set<String> inquiryFormatSegmentDirectory = getInquiryFormatSegmentDirectory(serviceName);
        List<wlrcm__InquiryLayoutSegment__mdt> inquiryLayoutSegment = getInquiryLayoutSegment(serviceName, inquiryFormatSegmentDirectory);
        Set<String> fieldAPI = getFieldMapping(inquiryLayoutSegment);
        Contact contactRecord = getContactRecord(contactId, fieldAPI);
        List<wlrcm__InquiryLayoutSegment__mdt> addContactToRequestSegmentProcedure = addContactToRequestSegmentProcedure(inquiryLayoutSegment, contactRecord);
        Map<String, List<wlrcm__InquiryLayoutSegment__mdt>> requestSegmentsMap = getRequestSegmentsMap(addContactToRequestSegmentProcedure);
        Set<String> inquirySegments = requestSegmentsMap.keySet();
        Set<String> inquiryFormatSegmentDirectorySort = getInquiryFormatSegmentDirectorySort(inquiryFormatSegmentDirectory, inquirySegments);
        List<String> attributeList = getAttributeList(inquiryFormatSegmentDirectorySort, requestSegmentsMap);
        buildInquiry = segmentBuilder(attributeList);
        return buildInquiry;
    }
    /* ================================================
    * @Method Name => getAttributeList
    * @author => Admin
    * @purpose=> This method build list with all of the values from the custom metadata wlrcm__InquiryLayoutSegment__mdt. 
    *                     This method witll trim the value and padded if necessary
    * @created date=> 
    ================================================*/
    public static List<String> getAttributeList(Set<String> inquiryFormatSegmentDirectorySort, Map<String, List<wlrcm__InquiryLayoutSegment__mdt>> requestSegmentsMap){
        
        List<String> attributeList = new List<String>();
        for(String seg : inquiryFormatSegmentDirectorySort){
            for(wlrcm__InquiryLayoutSegment__mdt rsp : requestSegmentsMap.get(seg)){
                if(rsp.wlrcm__Value__c == NULL || rsp.wlrcm__Value__c == CreditInquiryHTTPCallOutConstant.BLANK){
                    rsp.wlrcm__Value__c = CreditInquiryHTTPCallOutConstant.PLUS;
                }
                rsp.wlrcm__Value__c.trim();
                rsp.wlrcm__Value__c = rsp.wlrcm__Value__c.mid(0, Integer.valueOf(rsp.wlrcm__NumberOfBytes__c));
                if(rsp.wlrcm__Value__c.length() != rsp.wlrcm__NumberOfBytes__c){
                    rsp.wlrcm__Value__c = addPadding(rsp.wlrcm__Value__c, Integer.valueOf(rsp.wlrcm__NumberOfBytes__c), rsp.wlrcm__Align__c);
                }
                attributeList.add(rsp.wlrcm__Value__c);
            }
        }
        return attributeList;
    }
    /* ================================================
    * @Method Name => segmentBuilder
    * @author => Admin
    * @purpose=> This method build a request string from a List<String>
    * @created date=> 
    ================================================*/
    public static String segmentBuilder(List<String> attributeList){
        String segmentBuilder ='';
        
        for(String sb : attributeList){
            segmentBuilder += sb;
        }
       
        return segmentBuilder;
    }   
    /* ================================================
    * @Method Name => getFieldMapping
    * @author => Admin
    * @purpose=> This method return a Set<String> containing the values to build the Contact Query
    * @created date=> 
    ================================================*/
    public static Set<String> getFieldMapping(List<wlrcm__InquiryLayoutSegment__mdt> inquiryLayoutSegment){

        Set<String> fieldAPI = new Set<String>();

        for(wlrcm__InquiryLayoutSegment__mdt rsp : inquiryLayoutSegment){
            if(rsp.wlrcm__FieldMapping__c != CreditInquiryHTTPCallOutConstant.BLANK){
                fieldAPI.add(rsp.wlrcm__FieldMapping__c);
            }
        }
        return fieldAPI;
    }
    /* ================================================
    * @Method Name => getContactRecord
    * @author => Admin
    * @purpose=> This method build a dynamic contact query and return the contact record. 
    *               Query fields is based on the "Field Mapping" field in the custom metadata
    * @created date=> 
    ================================================*/
    public static Contact getContactRecord(Id contactId, Set<String> fieldAPI){
        String queryStr ='SELECT Id, ';
        for(String str : fieldAPI){
            queryStr += str + ', ';
        }
        queryStr = queryStr.removeEnd(', ');
        queryStr +=' FROM Contact WHERE  Id =\''+contactId + '\' LIMIT 1';
        Contact contactRecord = new Contact();
        try{
            contactRecord = Database.query(queryStr);
        }catch(QueryException qe ){
            throw new CustomException('Please enter a valid contact Id');
        }
        

        return contactRecord;
    }
    /* ================================================
    * @Method Name => addContactToRequestSegmentProcedure
    * @author => Admin
    * @purpose=> This method build wlrcm__InquiryLayoutSegment__mdt object. Where the wlrcm__Value__c field is equal to the Contact or Constant value
    * @created date=> 
    ================================================*/
    public static List<wlrcm__InquiryLayoutSegment__mdt> addContactToRequestSegmentProcedure(List<wlrcm__InquiryLayoutSegment__mdt> inquiryLayoutSegment, Contact contactRecord){
        List<wlrcm__InquiryLayoutSegment__mdt> addContactToRequestSegmentProcedure = new List<wlrcm__InquiryLayoutSegment__mdt>();

        for(wlrcm__InquiryLayoutSegment__mdt rsp : inquiryLayoutSegment){
            if(rsp.wlrcm__Constant__c){
                rsp.wlrcm__Value__c = rsp.wlrcm__Value__c;
            }else {
                if(rsp.wlrcm__FieldMapping__c != CreditInquiryHTTPCallOutConstant.BLANK){
                    if(contactRecord.get(rsp.wlrcm__FieldMapping__c) == NULL && rsp.wlrcm__RequiredOptional__c == CreditInquiryHTTPCallOutConstant.REQ){
                        throw new CustomException('Contact record is missing Inqury CreditInquiryHTTPCallOutConstant.REQUIRED fields : '+rsp.wlrcm__FieldMapping__c);
                    }else{
                        rsp.wlrcm__Value__c = String.valueOf(contactRecord.get(rsp.wlrcm__FieldMapping__c));
                    }
                }
            }
            addContactToRequestSegmentProcedure.add(rsp);
        }
        return addContactToRequestSegmentProcedure;
    }
    /* ================================================
    * @Method Name => getRequestSegmentsMap
    * @author => Admin
    * @purpose=>  This method build the map with the segment identifier as key values
    * @created date=> 
    ================================================*/
    public static Map<String, List<wlrcm__InquiryLayoutSegment__mdt>> getRequestSegmentsMap(List<wlrcm__InquiryLayoutSegment__mdt> inquiryLayoutSegment){
        Map<String, List<wlrcm__InquiryLayoutSegment__mdt>> requestSegmentsMap = new Map<String, List<wlrcm__InquiryLayoutSegment__mdt>>();
        for(wlrcm__InquiryLayoutSegment__mdt rsp : inquiryLayoutSegment){
            if(requestSegmentsMap.containsKey(rsp.wlrcm__SegmentIdentifier__c)){
                requestSegmentsMap.get(rsp.wlrcm__SegmentIdentifier__c).add(rsp);
            }else{
                requestSegmentsMap.put(rsp.wlrcm__SegmentIdentifier__c, new List<wlrcm__InquiryLayoutSegment__mdt>{rsp});
            }                                                                     
        }
        return requestSegmentsMap;
    }
    /* ================================================
    * @Method Name => getInquiryLayoutSegment
    * @author => Admin
    * @purpose=>  This method query all of the records in the custom metadata fields
    * @created date=> 
    ================================================*/
    public static List<wlrcm__InquiryLayoutSegment__mdt> getInquiryLayoutSegment(String serviceName, Set<String> inquiryFormatSegmentDirectory){

        List<wlrcm__InquiryLayoutSegment__mdt> inquiryLayoutSegment = [SELECT DeveloperName,Id,Label,Language,MasterLabel,NamespacePrefix,QualifiedApiName,wlrcm__Value__c,
                                                                            wlrcm__Align__c,wlrcm__BytePosition__c,wlrcm__Description__c,wlrcm__FieldType__c,
                                                                            wlrcm__Format__c,wlrcm__NumberOfBytes__c,wlrcm__SegmentIdentifier__c,wlrcm__ServiceName__c,
                                                                            wlrcm__FieldMapping__c, wlrcm__RequiredOptional__c,wlrcm__Constant__c
                                                                            FROM wlrcm__InquiryLayoutSegment__mdt 
                                                                            WHERE wlrcm__ServiceName__c =: serviceName AND wlrcm__SegmentIdentifier__c IN : inquiryFormatSegmentDirectory
                                                                            ORDER BY wlrcm__BytePosition__c ASC NULLS LAST 
                                                                            LIMIT 50000];
        
        return inquiryLayoutSegment;
    }
    /* ================================================
    * @Method Name => getInquiryFormatSegmentDirectory
    * @author => Admin
    * @purpose=>  This method build the map with the segment identifier as key values
    * @created date=> 
    ================================================*/
    public static Set<String> getInquiryFormatSegmentDirectory(String serviceName){
        Set<String> inquiryFormatSegmentDirectory = new Set<String>();
        for(wlrcm__InquiryFormatSegmentDirectory__mdt sd : [SELECT DeveloperName,Id,Label,Language,MasterLabel,NamespacePrefix,QualifiedApiName,wlrcm__Description__c,
                                                wlrcm__MaximumOccurrences__c,wlrcm__SegmentIdentifier__c,wlrcm__SegmentLength__c,wlrcm__ServiceName__c,
                                                wlrcm__Sort__c FROM wlrcm__InquiryFormatSegmentDirectory__mdt 
                                                WHERE wlrcm__ServiceName__c =: serviceName AND wlrcm__RequiredOptional__c =: CreditInquiryHTTPCallOutConstant.REQUIRED 
                                                ORDER BY wlrcm__Sort__c ASC NULLS LAST 
                                                LIMIT 50000])
        {
            inquiryFormatSegmentDirectory.add(sd.wlrcm__SegmentIdentifier__c);
        }
        return inquiryFormatSegmentDirectory;
    }
    /* ================================================
    * @Method Name => getInquiryFormatSegmentDirectorySort
    * @author => Admin
    * @purpose=>  This method build a Set with the sorted segment identifiers
    * @created date=> 
    ================================================*/
    public static Set<String> getInquiryFormatSegmentDirectorySort(Set<String> inquiryFormatSegmentDirectory, Set<String> inquirySegments){

        Set<String> inquiryFormatSegmentDirectorySort = new Set<String>();

        for(String str : inquiryFormatSegmentDirectory){
            if(inquirySegments.contains(str)){
                inquiryFormatSegmentDirectorySort.add(str);
            }
        }

        return inquiryFormatSegmentDirectorySort;
    }
    /* ================================================
    * @Method Name => addPadding
    * @author => Admin
    * @purpose=>  Adds padding to the string 
    * @created date=> 
    ================================================*/
    public static String addPadding(String str, Integer numberOfBytes, String align){
        if(align == CreditInquiryHTTPCallOutConstant.RIGTH){ 
            str = str.leftPad(numberOfBytes,CreditInquiryHTTPCallOutConstant.PLUS); 
        }else{
           	str = str.rightPad(numberOfBytes,CreditInquiryHTTPCallOutConstant.PLUS);
        }
        return str;         
	}  
}