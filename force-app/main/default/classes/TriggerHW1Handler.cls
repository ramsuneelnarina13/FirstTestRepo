public class TriggerHW1Handler 
{
    public static void oppmethod(list<opportunity> oplist)
    {
        for(Opportunity op : oplist)
        {
            if(string.valueof(op.Amount) == '' || op.Amount == null || op.Amount<= 0)
            {
                op.Amount=100;
            }
        }
    }    

}