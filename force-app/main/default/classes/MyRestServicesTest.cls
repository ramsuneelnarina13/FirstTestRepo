@istest
public class MyRestServicesTest {
    
    @testSetup
    static void dataSetup() {
        Account acc = new Account();
        acc.Name = 'Testing';
        acc.Industry = 'Agriculture';
        insert acc;
        
    }
    
    static testMethod void testGet() {
        Account acc = [ SELECT Id FROM Account LIMIT 1 ];
        RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();             
        req.requestURI = '/services/apexrest/Account/' + acc.Id;
        req.httpMethod = 'GET';
        RestContext.request = req;
        RestContext.response= res;
        Account acctResp = MyRestService.doGet();
        system.assertEquals(acctResp.Name, 'Testing');
    }
    
    static testMethod void testPost() {
        RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();             
        req.requestURI = '/services/apexrest/Account/';
        req.httpMethod = 'POST';
        RestContext.request = req;
        RestContext.response= res;
        
        list<String> acctId = MyRestService.doPost('Testing','Agriculture','test@test.com');
        system.debug(acctId);
        Account acc1 = [ SELECT Id, Name, Industry FROM Account WHERE Id =: acctId[0] ];
        Contact con1 = [SELECT Id,Email FROM Contact WHERE Id =: acctId[1] ];
        system.assertEquals(acc1.Name, 'Testing');
        system.assertEquals(acc1.Industry, 'Agriculture');
        system.assertEquals(con1.Email, 'test@test.com');
    }
    
    static testMethod void testDelete() {
        Account acc = [ SELECT Id FROM Account LIMIT 1 ];
        RestRequest req = new RestRequest(); 
        RestResponse res = new RestResponse();             
        req.requestURI = '/services/apexrest/Account/' + acc.Id;
        req.httpMethod = 'DELETE';
        RestContext.request = req;
        RestContext.response= res;
        MyRestService.doDelete();
        system.assertEquals( [ SELECT COUNT() FROM Account ], 0);
    }
    
}