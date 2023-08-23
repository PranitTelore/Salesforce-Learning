public class CustomSettingApexClass {
    public static void insertRecord(){
        Student__c std = new Student__c();
        std.City__c = 'MH';
        std.Name ='Std 2';
             
       	insert std;
        
        System.debug('Std Inserted :'+std);
    }
    public static void accessRecord(){
        List<Student__c> stdList =[SELECT Id,Name,City__c FROM Student__c];
        
        System.debug('Records in a List :'+stdList);
    }
    public static void accessRecordUsingMapGetAll(){
        Map<String,Student__c> getList =Student__c.getAll();
        System.debug('Using getALl :'+getList);
        
    }
    //'------------------------------------------
    public static void createHieRecord(){
        Hierarchy_Object__c hObj = new Hierarchy_Object__c();
        hObj.Email_Field__c ='orgDefault@sf.com';
        insert hObj;
    }
    public static void createUerProfileHieRecord(){
        Hierarchy_Object__c hObj = new Hierarchy_Object__c();
        hObj.Email_Field__c ='SystemAdminProfile@sf.com';
        hObj.SetupOwnerId='0055i000006vf1fAAA';
        insert hObj;
        System.debug('Created Email field for USer and Profile :'+hObj);
    }
    public static void accessOrgDefaultRecord(){
      Hierarchy_Object__c hObj =Hierarchy_Object__c.getOrgDefaults();
        System.debug('Values is :'+hObj);
    }
    public static void accessGetInstanceRecord(){
      Hierarchy_Object__c hObj =Hierarchy_Object__c.getInstance();
        System.debug('Values is :'+hObj);
        //it will work like hierarchy   user-->Profile-->OrgDefault
    }
    public static void accessGetInstanceUserRecord(){
        Hierarchy_Object__c hObj =Hierarchy_Object__c.getInstance('0055i000006vf1fAAA');
        System.debug('Values is :'+hObj);
    }
    public static void getValuesRecord(){
        Hierarchy_Object__c hObj =Hierarchy_Object__c.getValues(UserInfo.getUserId());
        System.debug('get:'+hObj);
    }
    
    
}