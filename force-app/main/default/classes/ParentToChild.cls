public class ParentToChild {
    public static void method(){
        //List<AggregateResult> accList = [];
        
       //System.debug(accList);
        
        integer  count= database.countQuery('SELECT count_distinct(StageName) FROM Opportunity');

		system.debug('the count is '+ count);
    }

}