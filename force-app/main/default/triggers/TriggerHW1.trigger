trigger TriggerHW1 on Opportunity (before insert,before Update) {
    
    TriggerHW1Handler.oppmethod(trigger.new);

}