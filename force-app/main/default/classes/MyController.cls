Public class MyController{
    public decimal latitude{get;set;}
    public decimal longitude{get;set;}
    public string resLocation{get;set;}
    //public string apikey='';
    public PageReference makeCallout(){
        if(latitude== Null && longitude== Null){
            
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Please Enter a lattitude,longitude'));
        }
        else{
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            // weatherAPI__c key = weatherAPI__c.getValues('APIValue');
            //system.debug(key.APIKey__c);
            map<string,weatherAPI__c> MapAPI = weatherAPI__c.getall();
            weatherAPI__c WA = MapAPI.get('AndhraAPI');
            string apikey = WA.APIKey__c;
           // String apikey = '9iIGxVgReTGYM5PNFAGWAQDe5741oHpK';
            //string apikey = (string)key.APIKey__c;
            String endPoint = 'http://dataservice.accuweather.com/locations/v1/cities/geoposition/search?q='+latitude+'%2C'+longitude+'&apikey='+apikey;
            
            if(Test.isRunningTest()) {
                endPoint = 'http://dataservice.accuweather.com/locations/v1/cities/geoposition/search?q=50%2C50&apikey=dummy';    
            }
            
            request.setEndpoint(endPoint);
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            if (response.getStatusCode() == 200) {
                
                Map<String,Object> results = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
                
                resLocation = (string)results.get('LocalizedName') ;      
                
                system.debug(resLocation);
                
            }
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Search For GeoPositions successful !'));
        }
        
        return null;
    }
}