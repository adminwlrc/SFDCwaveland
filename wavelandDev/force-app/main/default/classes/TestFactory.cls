/* ================================================
 * @Class Name : TestFactory
 * @author : Admin
 * @purpose: 
 * @created date: 
 * @last modified date: I have switch to the branch
 * @last modified by : Admin i just change to the branch
 ================================================*/
public class TestFactory {

    private static final String STANDT = 'standt';
    private static final String EMAIL = 'sysadmin@wavelandrcm.com';
    private static final String UTFEIGHT = 'UTF-8';
    private static final String TESTING = 'Testing';
    private static final String ENUS = 'en_US';
    private static final String AMERICALOSANGELES = 'America/Los_Angeles';    
    private static final String RANDOM = 'Random';

    public static User newUser(String profileName){
        User u = new User();
        u.Alias = STANDT;
        u.Email=EMAIL;
        u.EmailEncodingKey=UTFEIGHT;
        u.LastName=TESTING;
        u.LanguageLocaleKey=ENUS;
        u.LocaleSidKey=ENUS;
        u.ProfileId = [SELECT Id FROM Profile WHERE Name =: profileName LIMIT 1].Id;
        u.TimeZoneSidKey=AMERICALOSANGELES;
        u.UserName=EMAIL;        
        return u;
    }

    public static User insertNewUser(String profileName){
        User u = new User();
        u.Alias = STANDT;
        u.Email=EMAIL;
        u.EmailEncodingKey=UTFEIGHT;
        u.LastName=TESTING;
        u.LanguageLocaleKey=ENUS;
        u.LocaleSidKey=ENUS;
        u.ProfileId = [SELECT Id FROM Profile WHERE Name =: profileName].Id;
        u.TimeZoneSidKey=AMERICALOSANGELES;
        u.UserName=EMAIL;        
        database.insert(u);
        return u;
    }

    public static SObject createObject(String objName, Map<String, String> fieldMap){
        
        Schema.SObjectType targetType = Schema.getGlobalDescribe().get(objName);
        SObject obj = targetType.newSObject();
        for(String field : fieldMap.keySet()){
            obj.put(field, fieldMap.get(field));
        }
        return obj;
    }  

    public static List<SObject> createObjectList(String objName, Map<String, String> fieldMap, String uniqueField, Integer uniqueLength, Integer numbRecords){
    
        Schema.SObjectType targetType = Schema.getGlobalDescribe().get(objName);
        List<SObject> returnList = new List<SObject>();
        for(Integer i=0;i<numbRecords;i++){ 
            SObject obj = targetType.newSObject();
            for(String field : fieldMap.keySet()){
                if(field == uniqueField){
                    obj.put(field, fieldMap.get(field)+getRandom(uniqueLength)+i);
                }
                if(fieldMap.get(field) == RANDOM){
                    obj.put(field, getRandom(uniqueLength)+i);
                }
                if(field != uniqueField && 
                    fieldMap.get(field) != RANDOM){
                    obj.put(field, fieldMap.get(field));   
                }                
            }  
            returnList.add(obj);             
        }   
        return returnList;
    }

    public static String getRandom(Integer len){
        String ranStr = '';
        final String chars = '0123456789';

        while(ranStr.length() < len){
            Integer idx = Math.mod(Math.abs(Crypto.getRandomInteger()), chars.length());
            ranStr += chars.subString(idx, idx+1);
        }
        return ranStr;
    }  
}