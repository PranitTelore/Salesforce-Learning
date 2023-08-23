public class ExceptionDemo {
    public static void method(){
        System.debug('Start');
        try{
        Integer i=8/0;
        }finally{
            System.debug('Catched');
        }
        System.debug('End');
    }
}