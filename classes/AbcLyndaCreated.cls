/*-----------------------------------------------------------------------------------------
 * Class Name:AbcLyndaCreated
 * Description: This Class have been used to find and duplicate account creation.vvvdff
 * Date: 16/05/2020
 * Author: Lynda
 Added a new controller for demo purposedsfsdfsd zesdaasdsads sdfvbvads
-------------------------------------------------------------------- ----------------------*/
public with sharing class AbcLyndaCreated{
  public static List<Account> getAtAllActiveAccountsToRepo() {
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
  }
  
  public static List<Account> GetAllActiveAccountswest() {
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
  }
  public static List<Account> GetAllActiveAccount() {
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
  }
}