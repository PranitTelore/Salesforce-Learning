public class QuableClass implements Queueable{
    
    public static void execute(QueueableContext qc){
        System.debug('Inside Quable method');
        //The below queuable class will query 
        //“Test Opportunity Anonymous'' opportunity and also create it’s parent account.
        
        
        
        
        System.debug('Queueable Job Id :'+qc.getJobId());
    }
}