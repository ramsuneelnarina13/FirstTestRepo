public class TriggerTestSimple {
    list<Account> AcList = [select id,name,number_of_locations__c from Account where name = 'acc'];
    list<contact> conList = new list<contact>();
    public void TriggersimpleFun()
    {
        for (account ea:AcList){
            if(ea.number_of_locations__c >0 && ea.number_of_locations__c != null){
                for(integer i=1;i<=ea.number_of_locations__c;i++){
                    contact con=new contact ();
                    con.lastname = ea.name+' '+i;
                    con.accountid = ea.id;
                    conList.add(con);
                }
            }
        }
        if(conList.size()>0){
            insert conList;
        }
    }
}