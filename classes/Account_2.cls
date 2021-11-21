public class Account_2{
    
      public Account acc;
    
    Public Account_2(Apexpages.StandardController controller){
        acc =new Account() ;
    }
    
    public pageReference Survey(){ 
      acc.Name=acc.Name;   
        acc.AccountNumber=acc.AccountNumber;
      //  acc.Record_Owner_From_Vtiger__c=acc.Record_Owner_From_Vtiger__c;
        
        return null;
    }

}