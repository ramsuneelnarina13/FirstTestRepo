@RestResource(urlMapping='/Account/*')
global with sharing class MyRestService {
    
    @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
        return result;
    }
    
    @HttpPost
    global static list<string> doPost(String name,
                                      String industry, String email) {
                                          Account account = new Account();
                                          account.Name = name;
                                          account.Industry = industry;
                                          insert account;
                                          
                                          Contact contact = new Contact();
                                          ID acctID = account.ID;
                                          contact.LastName = name;
                                          contact.Email = email;
                                          contact.AccountId=acctID;
                                          insert contact;
                                          list<string> returnIds = new list<string>{account.ID ,contact.Id};
                                              return returnIds;
                                          
                                      }
    
    @HttpDelete
    global static void doDelete() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account = [select name, (select name, email from contacts) from account where id =:accountId];
        delete account;
    }
    
}