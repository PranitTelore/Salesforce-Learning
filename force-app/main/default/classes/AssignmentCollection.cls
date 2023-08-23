public class AssignmentCollection {
    public void addElement(){
        List<Integer> intnumbers = new List<Integer>();
        
        for(Integer i=0;i<100;i++){
            intnumbers.add(i+1);
        }
        
        System.debug('List Contains '+intnumbers);
        
       /* for(Integer printNumber:intnumbers){
            System.debug(printNumber);
        }*/
        
        //numbers which are divisible by 5
        
        for(Integer index=0 ;index<intnumbers.size();index++){
            if(math.mod(intnumbers[index],5)==0){
                System.debug(index);
            }
        }

        
    }

}