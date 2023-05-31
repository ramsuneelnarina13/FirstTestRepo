trigger UserCon on User (before insert) 
{
    if(trigger.isbefore && trigger.isinsert)
    {
        list<Contact> conList = new list<Contact>();
        for(User U: trigger.new)
        {
            contact con = new contact();
            con.LastName = U.Lastname;
            con.Email = U.Email;
            con.Title = U.Username;
            conlist.add(con);
        }
        insert conlist;
    }
    
}