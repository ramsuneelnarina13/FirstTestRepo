trigger AccountOpp on Account (before delete) {
        if(trigger.isDelete && trigger.isBefore){
             map<id,account> accidVsAccountMap= new map<id,account>([select name,(select name,stagename,accountid from opportunities where stagename='Closed Won' or stagename='Closed Lost') from Account where id IN: trigger.old]);
             List<Account_Deletion_Logs__c> DList = new List<Account_Deletion_Logs__c>();
             for(Account delAcc : accidVsAccountMap.values()){
                Account actualRecord = Trigger.oldMap.get(delAcc.Id);
                    if(delAcc.opportunities.size()>0){
                        Account_Deletion_Logs__c accDel= new Account_Deletion_Logs__c();
                        accDel.name=delAcc.Name;
                        DList.add(accDel);
                    }
                    else{
                        actualRecord.adderror('Account has Open Opportunities cannot be deleted');
                    }
             }
             if(Dlist.size()>0){
                insert DList;
            }
    }
}