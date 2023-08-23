public class AccEmailHandler {
    public static void methodIsActive(List<Account> newAccList, Map<Id,Account> oldAccMap){
        for(Account accNew : newAccList){
            if(accNew.Email__c !=oldAccMap.get(accNew.Id).Email__c){
                accNew.isActive__c=true;
            }
            }
        }
    }