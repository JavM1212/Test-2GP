@isTest
public class TestSecondGenPackageTest {
    @isTest
    public static void testClass() {
        Contact con2 = new Contact(
            FirstName = 'Jahir2',
            LastName = 'Valverde2'
        );        
        insert con2;
        
        Contact con = new Contact(
            FirstName = 'Jahir',
            LastName = 'Valverde',
            rh2__Currency_Test__c = 20
        );
        insert con;
        
        TestSecondGenPackage.printCurrencyTestField();
        
        Contact resultContact = [SELECT Id, rh2__Currency_Test__c FROM Contact WHERE rh2__Currency_Test__c != null LIMIT 1];
        System.assertEquals(20, resultContact.rh2__Currency_Test__c, 'The currency field value should be 20.');
    }
}