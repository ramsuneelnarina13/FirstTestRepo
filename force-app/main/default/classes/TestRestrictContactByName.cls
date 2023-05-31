@isTest
private class TestRestrictContactByName {

    @isTest static void metodoTest() 
    {
        Contact c = new Contact(LastName = 'INVALIDNAME');
  
       
        Database.SaveResult result = Database.insert(c, false);
      
       
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                             result.getErrors()[0].getMessage());


        
    }
    
}