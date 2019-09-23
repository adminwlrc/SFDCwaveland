/**
* @Description: This method will handle the inquiry result (integration with Equifax)
* 
* @author: Admin
* @version: 1.0
* @since: 08/25/2019
*/
public with sharing class CreditInquirySegmentHandler { 
    
    // public final static String result = 'FULL                    496MZ003620011I0P  1012720160717201908292019AAPRICOT                 DAPHNE         E                66634100209021960           0010100000000010000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000N                         CA2         COPPERHEAD                VW                        DECATUR             GA30035    112016 T072019                               FA5072      QHSWXQH                   SO                        DECATUR             GA30034    012016 T122015                               ESPDQDJHU                            EXUJHU NLQJ                                                              SS  666341002            666341002                &&';
    public static Boolean SYSTEMDEBUG = false;
    private final static String BLANK = 'BLANK';
    /**
    * @Description: Main
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static  Map<String, String> handleResult(String result, String serviceName){
        if(SYSTEMDEBUG){
            System.debug('Check result : '+result);
        }
        Map<String, wlrcm__ResultFormatSegmentDirectory__mdt> resultFormatSegmentDirectory = getResultFormatSegmentDirectory(serviceName);
        Map<String, String> recordCodeWithResultSegment = getRecordCodeWithResultSegment(result, resultFormatSegmentDirectory);
        Set<String> recordCodes = recordCodeWithResultSegment.keySet();
        Map<String, List<wlrcm__ResultLayoutSegment__mdt>> resultLayoutSegments = getResultLayoutSegments(serviceName, recordCodes);
        Map<String, String> fieldMappingWithResultValue = getFieldMappingWithResultValue(resultLayoutSegments, recordCodeWithResultSegment);
        return fieldMappingWithResultValue;
    }
    /**
    * @Description: This method build map with Field API and Value from the result string.  This map is based on the wlrcm__FieldMapping__c in the resultLayoutSegment custom metadata
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static Map<String, String> getFieldMappingWithResultValue(Map<String, List<wlrcm__ResultLayoutSegment__mdt>> resultLayoutSegments, Map<String, String> recordCodeWithResultSegment){
        Map<String, String> fieldMappingWithResultValue = new Map<String, String>();
        for(String str : recordCodeWithResultSegment.keySet()){
            for(wlrcm__ResultLayoutSegment__mdt rls : resultLayoutSegments.get(str)){
                if(rls.wlrcm__FieldMapping__c != 'BLANK'){
                    fieldMappingWithResultValue.put(String.valueOf(rls.wlrcm__FieldMapping__c),recordCodeWithResultSegment.get(str).mid(Integer.valueOf(rls.wlrcm__BytePosition__c),Integer.valueOf(rls.wlrcm__NumberOfBytes__c)));
                    //System.debug('Check Description : '+ rls.wlrcm__FieldMapping__c + ' : '+ recordCodeWithResultSegment.get(str).mid(Integer.valueOf(rls.wlrcm__BytePosition__c),Integer.valueOf(rls.wlrcm__NumberOfBytes__c)));
                }
            }
        }
        return fieldMappingWithResultValue;
    }
    /**
    * @Description: This method build map with all of the values from the custom metadata wlrcm__ResultLayoutSegment__mdt. and the RecordCode as the Key
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static Map<String, List<wlrcm__ResultLayoutSegment__mdt>> getResultLayoutSegments(String serviceName, Set<String> recordCodes){

        Map<String, List<wlrcm__ResultLayoutSegment__mdt>> resultLayoutSegments = new Map<String, List<wlrcm__ResultLayoutSegment__mdt>>();
        for(wlrcm__ResultLayoutSegment__mdt rls : [SELECT Id,Label,wlrcm__FieldMapping__c,wlrcm__Align__c,wlrcm__BytePosition__c,wlrcm__Description__c,
                                                            wlrcm__FieldType__c,wlrcm__Format__c,wlrcm__LayoutSegment__c, wlrcm__NumberOfBytes__c,
                                                            wlrcm__RecordCode__c, wlrcm__ServiceName__c 
                                                            FROM wlrcm__ResultLayoutSegment__mdt 
                                                            WHERE wlrcm__ServiceName__c =: serviceName AND wlrcm__RecordCode__c IN : recordCodes
                                                            ORDER BY wlrcm__BytePosition__c ASC NULLS LAST 
                                                            LIMIT 50000])
        {
            if(resultLayoutSegments.containsKey(rls.wlrcm__RecordCode__c)){
                resultLayoutSegments.get(rls.wlrcm__RecordCode__c).add(rls);
            }else{
                resultLayoutSegments.put(rls.wlrcm__RecordCode__c, new List<wlrcm__ResultLayoutSegment__mdt>{rls});
            }                                                                     
        }

        return resultLayoutSegments;
    }
    /**
    * @Description: This method build a map with key value as the record code (FULL) and the string value from the result. 
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static Map<String, String> getRecordCodeWithResultSegment(String result, Map<String, wlrcm__ResultFormatSegmentDirectory__mdt> resultFormatSegmentDirectory){
        Map<String, String> recordCodeWithResponseSegment = new Map<String, String>();
        Integer segmentLenghtCounter = 0;
        for(String str : resultFormatSegmentDirectory.keySet()){
            if(resultFormatSegmentDirectory.get(str).wlrcm__RecordCode__c == result.mid(segmentLenghtCounter,Integer.valueOf(resultFormatSegmentDirectory.get(str).wlrcm__RecordCodeBytes__c))){
                recordCodeWithResponseSegment.put(str,result.mid(segmentLenghtCounter,Integer.valueOf(resultFormatSegmentDirectory.get(str).wlrcm__SegmentLength__c)));
                segmentLenghtCounter += Integer.valueOf(resultFormatSegmentDirectory.get(str).wlrcm__SegmentLength__c);
            }
        }

        return recordCodeWithResponseSegment;
    }
    /**
    * @Description: This method queries all of the segment elements from the wlrcm__ResultFormatSegmentDirectory__mdt custom metadata. 
*                   This is to get the order of the segments
    * @author: Admin
    * @version: 1.0
    * @since: 08/25/2019
    */
    public static Map<String, wlrcm__ResultFormatSegmentDirectory__mdt> getResultFormatSegmentDirectory(String serviceName){
        Map<String, wlrcm__ResultFormatSegmentDirectory__mdt> resultFormatSegmentDirectory = new Map<String, wlrcm__ResultFormatSegmentDirectory__mdt>();
        for(wlrcm__ResultFormatSegmentDirectory__mdt rfsd : [SELECT Id,Label,wlrcm__Description__c,wlrcm__MaximumOccurrences__c,wlrcm__RecordCode__c,
                                                                wlrcm__SegmentCounter__c,wlrcm__SegmentLength__c,wlrcm__ServiceName__c,wlrcm__Sort__c,
                                                                wlrcm__OptionalStandard__c,wlrcm__RecordCodeBytes__c
                                                                FROM wlrcm__ResultFormatSegmentDirectory__mdt 
                                                                WHERE wlrcm__ServiceName__c =: serviceName 
                                                                ORDER BY wlrcm__Sort__c ASC NULLS LAST 
                                                                LIMIT 50000])
        {
            resultFormatSegmentDirectory.put(rfsd.wlrcm__RecordCode__c,rfsd);
        }

        return resultFormatSegmentDirectory;
    }
}