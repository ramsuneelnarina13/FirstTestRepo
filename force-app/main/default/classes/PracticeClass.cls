public class PracticeClass {
    Public void PracticeMethod(){
        date todate = date.today();
		list <opportunity> con = new list<opportunity>();
   		 con = [SELECT id, name FROM opportunity where CloseDate =: todate];
		system.debug(con);
    }

}