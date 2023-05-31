public class AccountHandler {
    
     Public static Account insertNewAccount(String AccName)
    {
        Account acc= new Account(Name = AccName);
           try {
            insert acc;
                return acc;
               }
            catch (DMLException e)
            {          
             return null;              
            }
    }

}