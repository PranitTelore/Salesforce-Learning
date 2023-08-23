public class EnumClass {
    
    public enum Cities {PUNE,NASHIK,MUMBAI,BANGLORE}
    
    public static void methodEnum(){
        Cities city =Cities.MUMBAI;
        System.debug('Ordinal :'+city.ordinal());
        System.debug('Ordinal :'+city.name());
        System.debug('Values Inside Enum :'+ Cities.values());
    }

}