Public class Batch_UserPatient IMPLEMENTS Database.Batchable<SObject>
{
	Public List<User> Start(Database.BatchableContext BC)
    {
        
        List<User> Use=[Select FirstName,LastName,Email from User];
        return Use;
    }
    Public Void Execute(Database.BatchableContext BC,List<User> UsList)
    {
        List<Contact> Con = new List<Contact>();
        for(User U:UsList)//
        {
            Contact C = New Contact();
            C.FirstName = U.FirstName;
            C.LastName = U.LastName;
            if(u.email.right(3) != 'com')
            {
                C.Email=U.Email+ '.com';
            }
            else
            {
                C.Email=U.Email;
            }
              Con.add(C);
        }
        Insert Con;
    }
     Public Void Finish (Database.BatchableContext BC)
     {
         
     }
    }