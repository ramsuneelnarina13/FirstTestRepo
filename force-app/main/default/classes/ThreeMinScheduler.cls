global class ThreeMinScheduler implements Schedulable{

     global void execute(SchedulableContext sc)
     {

     UpdateContactAddresses b = new UpdateContactAddresses(); // Your batch class

       database.executeBatch(b);

     }

}