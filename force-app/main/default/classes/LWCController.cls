public class LWCController {

    @AuraEnabled(cacheable=true)
    public static List<Account> callFromLWC(){
        System.debug('Method is called');
        return [SELECT Id, Name FROM Account LIMIT 5];

    }
}