trigger DupContact on Contact (before insert,before update) {
    
    if(trigger.isbefore){
        DupContactHandler.dupMethod(trigger.new);
    }
}