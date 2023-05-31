public class AccuPrac {
    public string CountryCode{get;set;}
    public decimal longitude{get;set;}
    public string resLocation{get;set;}
    public PageReference makeCallout(){
        if(CountryCode== Null ){
            
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Please Enter a lattitude,longitude'));
        }
        else{
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            map<string,weatherAPI__c> MapAPI = weatherAPI__c.getall();
            weatherAPI__c WA = MapAPI.get('AndhraAPI');
            string apikey = WA.APIKey__c; //9iIGxVgReTGYM5PNFAGWAQDe5741oHpK
            // accuWeather Userid: ramsuneelnarina13@gmail.com;
            // 			 Password: suneel@98;
            String endPoint = 'http://dataservice.accuweather.com/locations/v1/countries/'+ CountryCode +'?apikey='+apikey ;
            
            if(Test.isRunningTest()) {
                endPoint = 'http://dataservice.accuweather.com/locations/v1/countries/EUR?apikey=Dummy';    
            }
            
            request.setEndpoint(endPoint);
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            if (response.getStatusCode() == 200) {
                list<object> resu = (list<object>)JSON.deserializeUntyped(response.getBody());
                list<string> finalLis = new  list<string>();
                for(integer i=0;i<resu.size();i++){
                Map<String,Object> results = (Map<String,Object>) resu.get(i);
                string resLocation = (string)results.get('LocalizedName') ; 
                finalLis.add(resLocation);
                }
                system.debug(finalLis);
                
            }
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Search For GeoPositions successful !'));
        }
        
        return null;
    }
}