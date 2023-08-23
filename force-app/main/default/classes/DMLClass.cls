public class DMLClass {
    public static void updateMethod(){
        
        List<Account> accList = [Select Id,Email__c,(SELECT Id from Contacts) from Account where createdDate=today];
        
        
        
        
    }
    
    
    
   /* 
    public static void method(){
        
        //List<Account> acc = new List<Account>();
        
                  
        Account ac1 = new Account();
        ac1.Name='DML Test3';
        ac1.Rating='Warm';
        ac1.AccountNumber='87650321';
        ac1.Industry='Agriculture';
        
        
        System.debug('Before Insert :'+ac1.Id);
        insert ac1;
        System.debug('After Insert :'+ac1.Id);
                
       
        
    }
	*/
}