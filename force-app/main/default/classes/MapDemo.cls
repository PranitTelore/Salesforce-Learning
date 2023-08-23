public class MapDemo {
    public static void method(){
        Map<Integer, String> sample = new Map<Integer, String>{4=>'Delhi'};
        sample.put(1,'India');
        sample.put(2,'US');
        sample.put(3,'');
               
        sample.remove(4);
        System.debug(sample.size());
        
        Set<Integer> setValues = sample.keySet();
         System.debug(setValues);
        
        List<String> Listvalue = sample.values();
        System.debug(Listvalue);
        
        
        
    }

}