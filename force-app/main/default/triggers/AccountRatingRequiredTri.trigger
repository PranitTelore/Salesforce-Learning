trigger AccountRatingRequiredTri on Account (before insert,before update) {
    
    if(Trigger.isBefore){
        if(Trigger.isInsert || Trigger.isUpdate){
            RatingRequiredHandler.methodRatingRequired(Trigger.new);
        }
    }

}