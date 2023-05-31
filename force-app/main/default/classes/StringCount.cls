public class StringCount {
    public map<string,integer> dummy(string name)
    {
        map<string,integer> mymap = new map<string,integer>();
        string mystring = name;
        list<string> NL = new list<String>();
        for(integer i=0;i<=mystring.length()-1;i++){
            NL.add(mystring.substring(i,i+1));
        }    
        for(string ES:NL){
            integer count = 0;
            for(string ESS:NL){
                if(ES == ESS){
                    count++;
                    Mymap.put(ES,count);
                }
            }    
        }
        system.debug(Mymap);
        return mymap;
    }
}