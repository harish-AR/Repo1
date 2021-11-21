@isTest
public class L1_Case_Test {
        
    static testMethod void VerifyTestL1_Case()
  { 
      Id id = ApexPages.currentPage().getParameters().get('id');
      
      Case cp=(id == null) ? new Case():
      [select id  from Case where Id = :id];
          
                    System.debug('Id'+ id);                       
         
        
                                               
                                               
                                               
       test.startTest();
       
       upsert(cp);
     
     ApexPages.currentPage().getParameters().put('https://autorabit-test--lightning.cs51.my.salesforce.com/500/o','?');
           Apexpages.StandardController stdController = new Apexpages.StandardController(cp); 
            L1_Case My = new L1_Case(stdController);
        
       My.Save();
      //  My.L1_Case();
       
        test.stopTest();
        
    }

}