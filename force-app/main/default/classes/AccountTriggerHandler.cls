public without sharing class AccountTriggerHandler implements ITrigger {   
    public static Boolean triggerDisabled = false;

    public void beforeInsert(List<SObject> newItems) {
    }

    public void beforeUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
    }

    public void beforeDelete(Map<Id, SObject> oldItems) {
    }

    public void afterInsert(Map<Id, SObject> newItems) {
    }

    public void afterUpdate(Map<Id, SObject> newItems, Map<Id, SObject> oldItems) {
    }

    public void afterDelete(Map<Id, SObject> oldItems) {
    }

    public void afterUndelete(Map<Id, SObject> newItems) {
    }

    public Boolean isDisabled() {
        TriggerSettings__c triggerSettings = TriggerSettings__c.getInstance();
        Set<String> objectFields = Schema.SObjectType.TriggerSettings__c.fields.getMap().keySet();
        String fieldName = 'AccountTriggerDisabled__c';
        if (objectFields.contains(fieldName.toLowerCase()) && triggerSettings.get(fieldName) != null && (Boolean)triggerSettings.get(fieldName)) {
            return true;
        } else {
            return triggerDisabled;
        }
    }
}