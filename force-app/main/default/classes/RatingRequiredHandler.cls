public class RatingRequiredHandler {
    
    public static void methodRatingRequired(List<Account> newAccList){
        for(Account acc: newAccList){
            if(acc.Rating==null){
                acc.addError(Account.Rating,'Rating cannot be empty');
            }
        }
    }

}