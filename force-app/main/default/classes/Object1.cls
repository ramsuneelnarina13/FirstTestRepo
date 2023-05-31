public class Object1 { 
    public static void acc() {
        list<Account> bank= new list<Account>();
        for(integer a=0;a<10;a++){
            Account acc1=new Account();
            acc1.Name='dummy'+ a;
            acc1.Phone='12345'+ a;
            bank.add(acc1);
            
        }
        insert bank;
    }
}