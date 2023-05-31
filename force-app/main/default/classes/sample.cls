public class sample { 
    public static void demo()
    {
        list<Account> accList= [select Name,id from Account where name like '%Demo%'];
        list<contact> conList=new list<contact>();
        integer i=0;
        for(Account acc: accList){
           
            Contact con1=new Contact(LastName='democontact' + i ,Email='democontact'+i+'@gmail.com',Accountid=acc.id);
            conList.add(con1);
            i++;
           Contact con2=new Contact(LastName='democontact' + i ,Email='democontact'+i+'@gmail.com',Accountid=acc.id);
            conlist.add(con2);
            i++;
        }
        insert conList;
       
    }
        
        
        
        
        
        
        

}