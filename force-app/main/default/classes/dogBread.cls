public class dogBread {
    
    public static void dogBreeds(){
        
          Http http = new Http();
HttpRequest requestCode = new HttpRequest();
requestCode.setEndpoint('https://dog.ceo/api/breeds/list/all');
requestCode.setMethod('GET');
HttpResponse responseCode = http.send(requestCode);
if (responseCode.getStatusCode() == 200) {
    Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(responseCode.getBody());
    Map<string,Object> dogList = (map<string,Object>) results.get('message');
    list<object> HoundDog = (list<object>)dogList.get('hound');
    system.debug('these are the list of HoundDogs :');
    for (Object a:HoundDog) {
        System.debug(a);
    }
    list<object> terrierDog = (list<object>)dogList.get('terrier');
     system.debug('these are the list of terrierDog :');
    for (Object b:terrierDog) {
        System.debug(b);
    }
    
}
        else{
            system.debug('there was a problem in fetching data from the given URL..!');
        }

    }

}