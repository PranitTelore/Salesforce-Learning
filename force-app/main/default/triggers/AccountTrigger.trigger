trigger AccountTrigger on Account (before insert,before update) {
    
    if(Trigger.isBefore)
    {
        if(Trigger.isInsert || Trigger.isUpdate){
            //AccountTriggerHandler.changeType(Trigger.new);
            //AccountTriggerHandler.ratingRequired(Trigger.new);
            //AccountTriggerHandler.isActiveEmailChanged(Trigger.new,Trigger.old);
            AccountTriggerHandler.updateHot(Trigger.new);
            
        }
        
    }

}