public class locationHttp {

    public static void locations(){
        
         
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://ghibliapi.herokuapp.com');
request.setMethod('GET');
HttpResponse response = http.send(request);
if (response.getStatusCode() == 200) {
    Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
    List<Object> locList = (List<Object>) results.get('name');
    for (Object a: locList) {
        System.debug(a);
    }
}
    }
}