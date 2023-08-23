public class SetDemo {
	public static void method(){
        /*   
        Map<Integer, String> countries = new Map<Integer, String>();
        countries.put(1, 'Delhi');
        countries.put(2, 'Washington');
        countries.put(3, 'Canberra');
        countries.put(2, 'ABC');
        countries.put(6, 'Washington');
        countries.put(10, 'DEF');
        
        
        System.debug('Before Clear :'+countries);
        System.debug(countries.get(2));
        System.debug('After Clear :'+countries);
        
        System.debug('----------------------------------------------------');

        Map<Integer, String> countries2 = new Map<Integer, String>();
        boolean ans=countries2.isEmpty();
        System.debug(countries.equals(countries2));
         */
        
        
          
        Set<String> countries1 = new Set<String>();
        Set<String> countries2 = new Set<String>();
        countries1.add('India');
        countries1.add('Australia');
        countries1.add('United States');
        countries1.add('Indonesia');
        countries1.add('Canada');
        
        countries2.add('Mexico');
        countries2.add('United Kingdom');
        countries2.add('India');
        countries2.add('Australia');
        countries2.add('Italy');
        
       // List<String> finalCountries = new List<String>(countries1);
       List<String>finalCountries=new List<String>();
        countries1.removeall( countries2);                  //it will removes common values 'India'and'Australia' from countries1
        System.debug('Inside Countries 1:-'+ countries1);
        finalCountries.addAll(countries1);
        finalCountries.addAll(countries2);
        System.debug('Inside Countries 2:-'+ countries2);
        System.debug('Inside finalCountries :-'+ finalCountries);
        
               
    }
}