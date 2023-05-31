public class StringArrayTest {
    public static List<string> generateStringArray(integer n){
        
        list<string> myList = new list<string>();
        for(integer i=0;i<n;i++){
            myList.add('Test '+ i);
            system.debug(myList[i]);	
        }
        return myList;
    }

}