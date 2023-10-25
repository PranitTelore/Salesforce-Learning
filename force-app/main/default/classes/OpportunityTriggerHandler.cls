public class OpportunityTriggerHandler {
    
    public static void amountErr(List<Opportunity> oppList){
        for(Opportunity op : oppList){
            if(op.Amount == null){
                op.addError('Please populate Amount Fields');
            }
        }
    }
   	
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
    
    public static void populateHot(LIST<Opportunity> oppList){
        for(Opportunity opp : oppList){
            if(opp.Amount!=null && opp.Amount <=1000 && opp.Amount>=500){
                opp.Description='Hot Opp';
            }
            
        }
    }
    
    
}