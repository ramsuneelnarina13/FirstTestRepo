public class MatchingEmailAcc {
    Public void MatchingEmailMethod(){
        list<Contact> Acc = new List<Contact> ();
        List<User> Us = new list<User> ();
        acc = [select id,Email,Matching_ID__c from Contact] ;
        Us = [Select Email,SenderEmail,UserName,Matching_ID__c from User where Email = 'ramsuneelnarina13@gmail.com'];
        List<User> updateList = new list <User>(); 
        //system.debug(Us);
        for(Contact cc: acc){
            for(User U: Us){
                if(cc.Email == U.Email && U.Matching_ID__c == Null){
                    U.Matching_ID__c = cc.Matching_ID__c;
                    //updateList.add(U);
                    System.debug(U.Matching_ID__c);
                }
            }
        }
        Update Us;//updateList;
        system.debug(Us);
    }

}