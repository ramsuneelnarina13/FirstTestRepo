trigger MultiPick on Opportunity (before Update) {
    list<opportunity> opp = new list<opportunity>();
    list<account> acc = new list<account>();
    set<id> ids = new Set<id>();
    for(Opportunity O : trigger.new){
        ids.add(o.AccountId);
    }
    acc = [select id,name,MultiPickListOpp__c from account where id =: ids];
    list<account> accUpdateList = new list<account>();
    for(account a: acc){
        for(Opportunity O : trigger.new){
            if(o.accountid == a.id){
            a.MultiPickListOpp__c = O.MultiPickListOpp__c;   
            accUpdateList.add(a);
            }
        }
    }
    if(accUpdateList.size()>0){
    update accUpdateList;
    }
}