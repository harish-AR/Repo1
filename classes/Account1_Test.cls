@isTest
public class Account1_Test {
    
    
    static testMethod void testMethod1() 
    {
        Account  acc= new Account();
        Test.StartTest(); 
        
        acc.Name='abc';
        
        
        insert acc;
        
        ApexPages.StandardController ap= new ApexPages.StandardController(acc);    
        Account1 c= new Account1(ap);
        c.Survey();
        
        Account_2 c1=new Account_2(ap);
              c1.Survey();
        Test.StopTest();
    }
     static testMethod void testMethod2() 
    {
        Account  acc= new Account();
        Test.StartTest(); 
        
        acc.Name='abc';
        
        
        insert acc;
        
        ApexPages.StandardController ap= new ApexPages.StandardController(acc);    
        
        
        Account_2 c1=new Account_2(ap);
              c1.Survey();
        Test.StopTest();
    }
    static testMethod void testMethod3() 
    {
        Account  acc= new Account();
        Test.StartTest(); 
        
        acc.Name='abc';
        
        
        insert acc;
        
        ApexPages.StandardController ap= new ApexPages.StandardController(acc);    
        
        
        Account_2 c1=new Account_2(ap);
              c1.Survey();
        Test.StopTest();
    }
}