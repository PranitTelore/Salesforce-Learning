trigger LeadTrigger on Lead (after insert) {
    
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            if(LeadTriggerHandler.executeTrigger){
                LeadTriggerHandler.executeTrigger=false;
            LeadTriggerHandler.insertLead(Trigger.new);
                }
		}
    }

}