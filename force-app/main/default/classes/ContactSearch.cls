public class ContactSearch {
    
      public static List<Contact> searchForContacts (String lname, String postalCode){
       	List<Contact> contacts = [SELECT LastName FROM Contact where lastName = :lname AND
      	MailingPostalCode = :postalCode] ;
        return contacts;  
    }

}