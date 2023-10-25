@isTest
public class OpportunityTriggerHandler_Test {
	@isTest
    public static void populateHot(){
        Test.startTest();
        LIST<Opportunity> oppList = new LIST<Opportunity>();
           
        
        for(Integer i=1;i<5;i++){
            Opportunity o = new Opportunity();
            o.Name='abc' + i;
            o.StageName = 'Closed Won';
            o.CloseDate = System.today();
            o.Amount=600;
            oppList.add(o);
        }
        
        insert oppList;

        Test.stopTest();
        
        List<Opportunity> updated = [Select Id,Description from Opportunity where Id =: oppList[0].id];
        
        System.assertEquals('Hot Opp', updated[0].Description);
        
  
    }
}