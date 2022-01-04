public with sharing class class1 {
    public class1() {

    }

    @AuraEnabled(cacheable = true)
    public static List<Contact> getContactList(){
        try {
           return [Select Id, Name, Email From Contact Limit 20];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable = true)
    public static List<Account> getAccountDetails(){
        try {
           return [Select Id, Name From Account Limit 2];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
