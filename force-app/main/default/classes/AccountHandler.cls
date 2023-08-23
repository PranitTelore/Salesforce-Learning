public class AccountHandler {
    
    public static void method(List<Account> accNewList){
        List<Account>  accList = [select Id, Email__c,(Select id, Email from Contacts)
                                  from Account where id =:accNewList AND Email__c!=null];
        
		List<Contact> conToUpdate = new LIST<Contact>();   
        
        for(Account acc : accList){
            for(Contact con: acc.Contacts){
                con.Email =acc.Email__c;
                conToUpdate.add(con);
            }
        }
        
        if(!conToUpdate.isEmpty()){
            update conToUpdate;
        }
        
    }

}