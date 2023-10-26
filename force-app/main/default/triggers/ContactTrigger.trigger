trigger ContactTrigger on Contact (after insert,before insert) {
    
    if(Trigger.isAfter){
        if(Trigger.isInsert){
        ContactTriggerHandler.sendEmail(Trigger.new);
        }
    }

    if(Trigger.isBefore){
        if(Trigger.isInsert){
            ContactTriggerHandler.preventDuplicatePhoneEmail(Trigger.new);
        }

    }
}