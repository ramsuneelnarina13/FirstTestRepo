public class TriggerHW2Handler {
    public static void caseStatus(list<Case> caselist)
    {
        for(case EC:caselist)
        {
            if(EC.ContactPhone!= Null)
            {
                if(string.valueof(EC.ContactPhone).contains('999'))
                {
                    EC.Status = 'Escalated';
                }
            }     
        }
    }
}