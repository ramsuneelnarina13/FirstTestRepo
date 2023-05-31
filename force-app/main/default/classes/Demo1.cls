Public Class Demo1
{ 
    Public void CreateAccount(integer num){
        list<account> acc=new list<account>();
        for(integer i=0; i<num ; i++){
            account a = new account(Name = 'Demo'+i,Phone = '987654321'+i);
            acc.add(a);
            System.debug('Account Inserted :'+a.name+' with phone : '+a.Phone);
        }
        insert acc;   
    }  
}