public class OpportunityTriggerHandler {
   
    public static void method(List<Opportunity> newOppList){
        List<Opportunity> oppToUpdate = new List<Opportunity>();
        
        for(Opportunity opp:newOppList){
            Opportunity oppNew=new Opportunity();
            oppNew.Id =opp.Id;
           	oppNew.CloseDate=System.today();
            
            oppToUpdate.add(oppNew);
        }
        
        if(!oppToUpdate.isEmpty()){
            update oppToUpdate;
        }
    }
}