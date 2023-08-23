public class JSONClass {
    public static void handleResponse(){
        String JSONBody= '{"First Name":"JSON", "Last Name":"Salesforce"}';
        Map<String, Object> JsonMap =(Map<String, Object>)JSON.deserializeUntyped(JSONBody);
        System.debug('JSON Map :'+JsonMap);
        
        String fname = (String)JsonMap.get('First Name');
        String lname = (String)JsonMap.get('Last Name');
        
        System.debug('First Name :'+fname);
        System.debug('Last Name :'+lname);
        
        Contact con = new Contact();
        con.FirstName = fname;
        con.LastName = lname;
        insert con;
        
    }
    
    public static void handleRes(){
        String JSONBody = '[{"First Name":"Pranit","Last Name":"Telore"}]';
        List<Object> jsonlist =(List<Object>)JSON.deserializeUntyped(JSONBody);
        
        for(Object jObj : jsonlist){
            Map<String, Object> jsonMap =(Map<String, Object>)jObj;
            String fname=(String)jsonMap.get('First Name');
            String lname=(String)jsonMap.get('Last Name');
            
            System.debug('First Name :'+fname);
            System.debug('Last Name :'+lname);
        }
    }
}