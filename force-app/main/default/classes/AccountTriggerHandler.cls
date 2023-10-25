public class AccountTriggerHandler {
    public static void changeType(List<Account> newList){
        //Write a trigger such that when Account Rating is Cold then type must be prospect.
        for(Account acc : newList){
            if(acc.Rating=='Cold'){
                acc.Type='Prospect';
            }
        }
        
    }
    
    public static void ratingRequired(List<Account> newList){
        //Write a trigger such that Rating is required field.
        for(Account acc : newList){
            if(acc.Rating==null){
                acc.addError('Please Fill Account Rating field... It is Mandatory !');
            }
            
        }
    }
    
    public static void isActiveEmailChanged(List<Account> newList, List<Account> oldList){
        //Write a trigger such that when Account Email is changed then isActive must be true.
        for(Account newAcc : newList){
            for(Account oldAcc : oldList){
                if(newAcc.Id == oldAcc.Id){
                    if(newAcc.Email__c != oldAcc.Email__c){
                        newAcc.isActive__c=true;
                        
                    }
                }
            }
        }
	}
    
    public static void updateHot(List<Account> accList){
        for(Account acc : accList){
            if(acc.Industry=='Media' || acc.Industry== 'Energy'){
                acc.Rating='Hot';
            }
        }
        
    }
}