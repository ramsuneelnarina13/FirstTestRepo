trigger AccountDeletionTask on Account (After delete) {
    for(Account a:Trigger.old){
        
        Opportunity opp=new Opportunity();
        if(a.id==opp.account.id){
            if(opp.StageName=='Closed Won' || opp.StageName=='Closed Lost'){
                
            }
            else{
                
                a.addError('You cant delete this account');
            }
        }
        
        
    }
}