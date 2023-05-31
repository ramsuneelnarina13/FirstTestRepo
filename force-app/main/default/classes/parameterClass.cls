public class parameterClass {
  
    public integer c;
    decimal d;
    list<account> acc =new list<account>();
    Map<id,string> imap = new map<id,string>();
    // non void RETURN
    public void pc(list<string> dec){
        for( string es :dec){
            system.debug(es);
        } 
       
        system.debug(c);
        
        
    }
}