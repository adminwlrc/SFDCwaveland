public with sharing class GenericMethods {
    
    
    public static Map<String, String> getRecordTypeMap( String objectAPIName){
        
        Map<String,Id> recordTypeMap = new Map<String,Id>();
        Schema.DescribeSObjectResult sobjectResult = Schema.getGlobalDescribe().get(objectAPIName).getDescribe();
        List<Schema.RecordTypeInfo> recordTypeInfo = sobjectResult.getRecordTypeInfos();
        
        for(Schema.RecordTypeInfo info : recordTypeInfo){
        recordTypeMap.put(info.getName(),info.getRecordTypeId());
        }
        return recordTypeMap;
    }
}
