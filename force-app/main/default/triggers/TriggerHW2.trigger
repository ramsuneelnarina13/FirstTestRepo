trigger TriggerHW2 on Case (before insert,before Update,After Update) {
    TriggerHW2Handler.caseStatus(Trigger.new);

}