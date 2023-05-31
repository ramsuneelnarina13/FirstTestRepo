public class WeatherAPI {
    public void customSettingUse(){
        //-----------use this format-----------//
         map<string,weatherAPI__c> MapAPI = weatherAPI__c.getall();
            weatherAPI__c WA = MapAPI.get('AndhraAPI');
            string abc = WA.APIKey__c;
            string phone = WA.mobile__c;
        
        
           
        //---------------Type-1-----------------//
        Map<string, weatherAPI__c> mcs = weatherAPI__c.getAll();
        system.debug(mcs);
        weatherAPI__c imap = mcs.get('ABC');
        system.debug(imap);
        Datetime res = (datetime)imap.get('CreatedDate');
        system.debug(res); 
        id res2 = (id)imap.get('CreatedById');
        system.debug(res2); 
        string res3 = (string)imap.get('Name');
        system.debug(res3); 
        //----------------Type-2------------------//
        weatherAPI__c mc = weatherAPI__c.getValues('AccuWheatherAPI');
        string api = mc.apikey__c; //mc.name,mc.CreatedDate.....
        system.debug(api);
    }
    
}
/*
{ABC=weatherAPI__c:  {LastModifiedDate=2022-04-12 02:12:53,
                        IsDeleted=false,
                        CreatedById=0055g000003WdyMAAS, 
                        APIKey__c=hbfdcefbWJKFE,
                        CreatedDate=2022-04-12 02:12:53,
                        Id=a0E5g0000020tQzEAI,
                        LastModifiedById=0055g000003WdyMAAS, 
                        SetupOwnerId=00D5g000004FCXnEAO,
                        Name=ABC,
                        SystemModstamp=2022-04-12 02:12:53},
            
            AccuWheatherAPI=weatherAPI__c: {LastModifiedDate=2022-03-24 18:32:13,
                                            IsDeleted=false, 
                                            CreatedById=0055g000003WdyMAAS,
                                            APIKey__c=123456789agbbev, 
                                            mobile__c=(984) 903-2919, 
                                            CreatedDate=2022-03-24 15:
*/