public class ExceptionClass {
    
    public static void method(){
        Integer x=5;
        System.debug('Start');
        try{    
            System.debug('Inside Try1');
        if(x>4){
           throw new CustomException(); 
        }   
             System.debug('Inside Try2');
        }catch(Exception e){
             System.debug(e.getMessage());
            
        }
        System.debug('End');
    }

}