@istest
Private class ControllerTest {
    @isTest static void testCallout() {
        Test.setMock(HttpCalloutMock.class, new MockResponse());
        PageReference pageRef = Page.DisplayPage;
        Test.setCurrentPage(pageRef);
        Test.startTest();
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://dataservice.accuweather.com/locations/v1/cities/geoposition/search?q=50%2C50&apikey=dummy');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug(response.getBody());
        MyController mc = new MyController();
        mc.latitude = 50;
        mc.longitude = 50;
        mc.makeCallout();
        Test.stopTest();
    }
}