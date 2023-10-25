public class LeadTriggerHandler {
    public static boolean executeTrigger=true;
    
    public static void insertLead(List<Lead> newLeads){
        list<Lead> leadsToInsert = new List<Lead>();
        
        for(Lead l : newLeads){
            Lead IdDuplicateLead =new Lead();
            IdDuplicateLead.LastName=l.LastName + 'Duplicate';
            IdDuplicateLead.Company = l.Company;
            leadsToInsert.add(IdDuplicateLead);            
        }
        
        if(!leadsToInsert.isEmpty()){
            insert leadsToInsert;
        }
    }

}