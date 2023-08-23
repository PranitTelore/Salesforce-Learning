public class SetCollection {
    public static void method(){
        Set<String> country = new Set<String>();
        country.add('India');
        country.add('USA');
        
        for(String str:country){
            System.debug(str);    
       }
        List<Integer> age = new List<Integer>{10,20,30};
            System.debug('List Is :'+age);
        Set<Integer> mark = new Set<Integer>();
        mark.addAll(age);
        System.debug('Set Is :'+mark);
        
    }
}