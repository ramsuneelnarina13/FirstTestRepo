public class Opportunity1 {
    public static void demo(){
        list<opportunity> oppList = new list<opportunity>();
        for(integer a =0; a<10; a++){
            opportunity opp = new opportunity();
            opp.Name = 'Dummy_opp'+ a;
            opp.CloseDate = system.today();
            opp.StageName = 'surekha';
            oppList.add(opp);
        }
        insert oppList;
    }

}