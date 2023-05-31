public class DateFormat {
    public void correctFormat(string DateString){
        map<string,string> MonthMap = new map<string,string>{
            'january' => '01',
                'february' => '02',
                'march' => '03',
                'april' => '04',
                'may' => '05',
                'june' => '06',
                'july' => '07',
                'august' => '08',
                'september' => '09',
                'october' => '10',
                'november' => '11',
                'december' => '12'
                };
        Date ProperDate;
        list<string> MonthList = DateString.split('/', 0);
        if(MonthList[0].isAlpha()){
            string MonthValue = MonthList[0].toLowerCase();
            for(string EachMonth : MonthMap.keySet()){
                if(EachMonth.contains(MonthValue)){
                    MonthValue = MonthMap.get(EachMonth);
                    system.debug(MonthValue);
                }
            }
            
            ProperDate =date.parse(MonthValue+ '/' + MonthList[1].left(2) + '/' + MonthList[2]);
            system.debug(ProperDate);
        }
        else{
            ProperDate = date.parse(MonthList[0]+ '/' + MonthList[1].left(2) + '/' + MonthList[2]);
            system.debug(ProperDate);
        }
    }
    
}