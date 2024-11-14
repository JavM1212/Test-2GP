@namespaceAccesible
public class TestSecondGenPackage {
    @namespaceAccesible
	public static void printCurrencyTestField() {
        List<Contact> con = [SELECT Id, rh2__Currency_Test__c FROM Contact WHERE rh2__Currency_Test__c != null LIMIT 1];
        
        if (con.size() == 0) {
            System.debug('No contacts in this org with rh2__Currency_Test__c populated');
            return;
        }
        
        System.debug('con.rh2__Currency_Test__c: ' + con[0].rh2__Currency_Test__c);
        return;
    }
}