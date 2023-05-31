public class DupContactHandler {
    public static void dupMethod(list<contact> conList ){
        Set <String> emailSet = new Set<String>(); 
        Set <String> phoneSet = new Set<String>(); 
        for (contact con:conList) {
            emailSet.add(con.email);
            phoneSet.add(con.phone);
        }
        List <Contact> contactList = new List<Contact>();
        contactlist = [SELECT email,phone FROM Contact WHERE email IN :emailSet and phone IN :phoneSet];
        for (contact con:contactlist) {
            If (contactList.size() > 1) {           
                con.email.adderror( 'Duplicate Contact Found. Use Existing Contact.' );
            }
        }     
    }  
}