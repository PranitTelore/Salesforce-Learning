public class ApexBatchClass implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext Info){
        System.debug('In a Start Method');
        String query='Select Id,Name from Account';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext Info, List<SObject> accList) {
        System.debug('Inside Execute method');
        System.debug('List Size: '+acclist.size());
        
    }
    
    public void finish(Database.BatchableContext info){
        System.debug('Inside Finish Method');
        System.debug('Job Id in Finisha :'+info.getJobId());
    }
}