public class SwitchClass {
    
    public static void cities(String cityName){
        if(cityName=='Pune'){
            System.debug('Im in Pune');
        } else if(cityName== 'Nashik'){
            System.debug('Im in Nashik');
        } else if (cityName=='Banglore') {
            System.debug('Im in Banglore');
        } else {
            System.debug('Im in Other City');
        }
    }
    
    /* Switch- When in Apex */
    
    public static void cityApex(String cityName){
        switch on cityName {
            when 'Pune' {
                System.debug('Im in Pune Apex');
            }
            when 'Nashik' {
                System.debug('Im in Nashim Apex');
            }
            when 'Banglore' {
                System.debug('Im in Banglore Apex');
            }
            when else {
                System.debug('Im in Other Apex');
            }
        }
    }

}