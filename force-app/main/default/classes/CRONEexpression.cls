public class CRONEexpression 
{   // Crone expression for "three months" from todays date;
    public string croneMethod()
    {
       /* integer dated = date.today().day();
        integer month = date.today().month()+3;
        integer year = date.today().year();
        //string year = string.valueOf(date.today().year());
        string CRONE = '00 00 00 '+ dated +' ? ' + month + ' ' + year;
        system.debug(CRONE);
*/
        string CRONE;
        integer Every3Min = system.now().minute();
        system.debug(Every3Min);       
        Every3Min = Math.mod(Every3Min,3);
        if(Every3Min == 0){
        CRONE = '00 '+ Every3Min + ' * * * ?';  
        }
        else{
           CRONE = '00 03 * * * ?'; 
        }
        return CRONE;
    }
    
}