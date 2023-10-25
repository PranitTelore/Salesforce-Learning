public class OutBoundCalling {
    
    public static void getCurrency(){
        Http h = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint('https://api.freecurrencyapi.com/v1/latest?apikey=fca_live_2bPKE5SHI6bxrDEWArj9eg5n5ui9te6eYnYhdxuj&base_currency=INR&currencies=USD,AUD');
        request.setMethod('GET');
        
        HttpResponse response=h.send(request);
       	System.debug('Status Code :'+ response.getStatusCode());
        System.debug('Body :'+response.getBody());
        
        Map<String,Object> jsonBodyResponse =(Map<String,Object>)JSON.deserializeUntyped(response.getBody());
        Map<String,object> dataMap=(Map<String,object>)jsonBodyResponse.get('data');
        decimal audData=(decimal)dataMap.get('AUD');
        decimal usdData=(decimal)dataMap.get('USD');
        
        System.debug('AUD :'+audData);
        System.debug('USD :'+usdData);
        
    }

}