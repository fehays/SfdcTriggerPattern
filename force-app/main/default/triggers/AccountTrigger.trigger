trigger AccountTrigger on Account (after insert, after update, after delete, after undelete, before insert, before update, before delete) {
    TriggerDispatcher.run(new AccountTriggerHandler());
}