// Write a trigger such that when Account Rating is Cold then type must be prospect
public class AccountTriggerHandler {
    
    public static void methodRating(List<Account> newAccList){
        for(Account acc:newAccList){
            if(acc.Rating=='Cold'){
                acc.Type='Prospect';
            }
        }
    }
	
}