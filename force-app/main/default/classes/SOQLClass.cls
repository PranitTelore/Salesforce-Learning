public class SOQLClass {   
    public static void sObjectMethod(String fieldname, String objName){
    String Query='Select '+fieldname+' from '+objName;
        List<Account> accList = Database.query(Query);
        System.debug(accList.size());
        
        for(SObject s:accList){
           // if(s.getSObjectType()==Schema.Account.SObjectType)
            System.debug(s.get('Name'));            
            
        }
    }
}