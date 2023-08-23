trigger AccountEmailTri on Account (before update) {
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            AccEmailHandler.methodIsActive(Trigger.new, Trigger.oldMap);
        }
}
}