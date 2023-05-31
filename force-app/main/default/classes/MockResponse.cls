@isTest
global class MockResponse implements HttpCalloutMock {
    // Implement this interface method
    String apikey = '9iIGxVgReTGYM5PNFAGWAQDe5741oHpK';
    global HTTPResponse respond(HTTPRequest req) {
        // Optionally, only send a mock response for a specific endpoint
        // and method.
        System.assertEquals('http://dataservice.accuweather.com/locations/v1/cities/geoposition/search?q=50%2C50&apikey=dummy', req.getEndpoint());
        System.assertEquals('GET', req.getMethod());
         
        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"Version": 1,"Key": "222777","Type": "City","Rank": 75,"LocalizedName": "Dzhany-Kuduk","EnglishName": "Dzhany-Kuduk"}');
        res.setStatusCode(200);
        return res;
    }


}