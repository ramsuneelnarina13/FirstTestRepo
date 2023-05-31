public class Count_Str {
    public static void main()
    {
        String str = 'The quick brown fox jumps over the lazy dog';
        String str1 = str.toLowerCase();
        Map<String,Integer> Count_Map = New Map<String,Integer>();
        for(string st :str1.split(' '))
        {
            if(Count_Map.containskey(st))
            {
                Integer count = Count_Map.get(st);
                count ++;
                Count_Map.put(st,count);
            }
            else
            {
                Count_Map.put(st,1);
            }
        }
        for(String str2 : Count_Map.keyset())
        {
            System.debug(str2+ '---->' + Count_Map.get(str2));
        }
    }
}