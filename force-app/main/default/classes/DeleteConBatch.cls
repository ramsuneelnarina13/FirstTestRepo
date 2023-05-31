public class DeleteConBatch 
{
    public Void ConMassDel()
    {
        map<id,contact> conmap = new map<id,contact>();
        List<user> FailList = new list<user>();
        list<Contact> conDel = new list<contact>();
        list<Contact> conlist = [Select FirstName,LastName from contact];
        list<User> Userlist = [select FirstName,LastName,Email from user];
        for(user u: Userlist)
        {
            for(contact c:conlist)
            {
                if(c.FirstName==u.FirstName && c.LastName==u.LastName)
                {
                    conDel.add(c);
                }
                else
                {
                    FailList.add(u);
                }
        	}
        }
        conmap.putall(conDel);
        system.debug('contacts to be deleted '+ conmap.values());
        if(conmap.size()>0)
        { 
            delete conmap.values();
        }
       
        system.debug(FailList);
    }
}