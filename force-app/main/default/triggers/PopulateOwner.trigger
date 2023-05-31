trigger PopulateOwner on Account (after insert,after update) {
    map<id,string> accMap = new map<id,string>();
    set<id> accid = new set<id> ();
    for(account a: trigger.new){
        accid.add(a.ownerid);
    }
    list<user> userlist = [select name,id from user where accountid in : accid];
    //accMap = [select id,ownerid from Account where id in : accid];
    for(user u:Userlist){
        accmap.put(u.id,u.LastName);
    }
    

}