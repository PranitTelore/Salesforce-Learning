public class Sample {
    public Integer normalVar = 0;
    public static Integer staticVar = 0;
    
    public void myMethod() {
        normalVar = normalVar + 10;
        staticVar = staticVar + 10;	
        
        System.debug('Normal Variable is : '+this.normalVar);
        System.debug('Static Variable is : '+staticVar);
    }
}