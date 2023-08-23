public class CollectionClass {
    public void listCollection(){
        List<String> countryList = new List<String>();
        countryList.add('India');
        countryList.add('USA');
        countryList.add('AUS');
        countryList.add('London');
        
         // Using add method
        countryList.add(1,'New Zealand'); 
        
        System.debug('List elements are :'+countryList);
  
        
        
        for(Integer i=0;i<countryList.size()-1;i++){
            System.debug('Conutry at index '+i+' is '+countryList[i]);
        }
        
        System.debug('----------------------------------------------------');
        
        LIST<Integer> numbers = new LIST<Integer>();
        numbers.add(10);
        numbers.add(20);
        numbers.add(30);
        
        
        System.debug('List Integer contains '+numbers);
        
        //accessing all elements one by one
        for(Integer accessNum:numbers ){
            System.debug('Number list is  '+accessNum);
        }
        
        System.debug('----------------------------------------------------');
              
        
        // Using addAll method
        
        LIST<Integer> oddnumbers = new LIST<Integer>();
        oddnumbers.add(10);
        oddnumbers.add(50);
        oddnumbers.add(30);
        
        numbers.addAll(oddnumbers);
        
        System.debug('List Integer contains '+numbers);
        
        numbers.clear();
        
        System.debug('After clear used number list contains: '+numbers);
       		
        System.debug('----------------------------------------------------');
        
        // copying list elements from one list to another list
        // 1. Using Constructor
        
        List<Integer> inegerList = new List<Integer>();
        inegerList.add(10);
        inegerList.add(20);
        
        List<Integer> duplicateList = new List<Integer>(inegerList);
        System.debug('Duplicate list is '+duplicateList);
        
        //  2. using clone method
        inegerList.add(100);
        List<Integer> duplicateListCloneMethod = inegerList.clone();
        
        System.debug('Duplicate list clone method'+duplicateListCloneMethod);
        
        System.debug('----------------------------------------------------');
        
        //Sorting a list
        LIST<Integer> sortnumbers = new LIST<Integer>();
        sortnumbers.add(600);
        sortnumbers.add(50);
        sortnumbers.add(10);
        sortnumbers.add(40);
        sortnumbers.add(200);
        
        
        sortnumbers.sort();
        
        sortnumbers.set(4,250);
        System.debug('Sorted list is '+sortnumbers);
        System.debug('----------------------------------------------------');
        System.debug('Element at Index using get Method :'+sortnumbers.get(2));
        System.debug('IndexOf Method use :'+sortnumbers.indexOf(50));
        System.debug('Remove() Method use :'+sortnumbers.remove(0));
        System.debug('After remove index at 0 list is '+sortnumbers);
   
        System.debug('After set sortnumbers.set(0,250)'+sortnumbers);
        System.debug('----------------------------------------------------');
        System.debug('--------------------Use of toString() method --------------------------------');
        
        
        
        
        
    }    
}