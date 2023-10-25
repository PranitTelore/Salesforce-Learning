public class ListCollection {
    public static void listMethods(){
        List<String> strList = new List<String>();
        strList.add('Red');
        strList.add('Green');
        strList.add('Blue');
        
        System.debug('String contains :'+strList);
        
        strList.add(1,'Black');
        
        System.debug('String contains :'+strList);
        
        List<String> str2List = new List<String>();
        strList.add('Orange');
        str2List.addAll(strList);
        
         System.debug('String 2 contains :'+str2List);
        
    }
}