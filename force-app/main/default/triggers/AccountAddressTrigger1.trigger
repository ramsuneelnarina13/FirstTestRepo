trigger AccountAddressTrigger1 on Account (before insert,before update) {
    
        for (Account acc : trigger.new){
        
             if (acc.Match_Billing_Address__c = true){
                 
                 acc.ShippingPostalCode = acc.BillingPostalCode;
                  
                 
            }
        }  
    
    

}