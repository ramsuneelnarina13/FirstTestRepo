trigger AccountDeletion on Account (After delete) {
    
    for(Account a:Trigger.old){
       Opportunity opp=new Opportunity();
       
            if(a.id==opp.account.id){
                if(opp.StageName =='Closed Won' || opp.StageName =='Closed Lost'){
                   Account_Deletion_Logs__c ADL = new Account_Deletion_Logs__c ();
                    ADL.Name_of_Acc_Deleted__c = a.Name;
                    delete a;
                 }
                
            else{

                a.addError('You cant delete this account');
            }
            }
        
            else{

                a.addError('Miss Match');
            }
     }  
}