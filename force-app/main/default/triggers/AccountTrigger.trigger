trigger AccountTrigger on Account (after update) {
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            AccountHandler.method(Trigger.new);
        }
	}
}