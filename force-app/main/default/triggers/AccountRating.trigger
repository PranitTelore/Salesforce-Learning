trigger AccountRating on Account (before insert) {
    
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            AccountTriggerHandler.methodRating(Trigger.new);
        }
    }

}