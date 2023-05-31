@isTest
Private class AccountOppTest {
   @isTest
    static void accDel(){
        Account acct = new Account(Name='Test Account');
        insert acct;
         Account acct2 = new Account(Name='Test Account2');
        insert acct2;
        Opportunity opp = new Opportunity(Name=acct.Name + ' Opportunity',
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=acct.Id);
        insert opp;
        Opportunity opp2 = new Opportunity(Name=acct2.Name + ' Opportunity',
                                       StageName='Closed Lost',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=acct2.Id);
        insert opp2;
        Account acct3 = new Account();
        
         Test.startTest();
        Database.DeleteResult result = Database.delete(acct, false);
       
        Database.DeleteResult result2 = Database.delete(acct2, true);
         
        acct3.Name=acct2.name;
        insert acct3;
        Test.stopTest();
        
         System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account.',
                             result.getErrors()[0].getMessage());
    }

}