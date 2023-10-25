trigger OpportunityTrigger on Opportunity (before insert) {
    
    if(Trigger.isBefore){
        if(Trigger.isInsert){
           // OpportunityTriggerHandler.amountErr(Trigger.new);
           OpportunityTriggerHandler.populateHot(Trigger.new);
        }
    }
    
}