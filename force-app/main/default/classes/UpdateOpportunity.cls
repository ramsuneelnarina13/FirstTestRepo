public class UpdateOpportunity {
public static void descriptionUpdate() {
List<Opportunity> opp = [SELECT Id,Name,Description From Opportunity WHERE
StageName='Closed Won'limit 5];
System.debug(opp);
for ( Opportunity opps :opp)
{
if(opps.Description == Null || opps.Description == '' ){
opps.Description = 'This Opportunity is converted into Account';
}
}
Update opp;
}
}