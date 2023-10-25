@isTest
public class AccountTriggerHandler_Test {
    @isTest
    public static void checkRating(){
        
        Test.startTest();

        Account a = new Account();
        a.Name='xyz';
        a.AccountNumber='12345678';
        a.Industry='Media';
        
        insert a;
        Test.stopTest();
        
        List<Account> updatedRating = [SELECT id,name,Rating from Account where id =: a.Id];
        
        System.assertEquals('Hot',updatedRating[0].Rating );
        
    }

}