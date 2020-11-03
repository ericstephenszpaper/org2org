@isTest
public class zAcceptControllerTests {
    public static ZPAPER__zStack__c stack;
    public static User usr;
    
    static void init() {
        Profile pf = [Select Id from Profile where Name = 'Standard User'];
        usr = new User();
        usr.FirstName = 'Test1';
        usr.LastName = 'User1';
        usr.Email = 'testuser1@test123456789.com';
        usr.CompanyName = 'test.com';
        usr.Title = 'Test User';
        usr.Username = 'testuser1@test123456789.com';
        usr.Alias = 'testuse1';
        usr.CommunityNickname = 'Test_User1';
        usr.TimeZoneSidKey = 'America/Mexico_City';
        usr.LocaleSidKey = 'en_US';
        usr.EmailEncodingKey = 'ISO-8859-1';
        usr.ProfileId = pf.Id;
        usr.LanguageLocaleKey = 'en_US';
        insert usr;
        
        stack = new ZPAPER__zStack__c(ZPAPER__Priority__c = 'Normal');
        insert stack;
    }
    
    @isTest
    private static void testChangeOwner() {
        init();
        Test.startTest();
        System.runAs(usr) {
            ZPAPER__zStack__c curStack = [select Id,OwnerId from ZPAPER__zStack__c where Id = :stack.Id];
            Id curOwnerId = curStack.OwnerId;
            System.debug('@@@ Original owner: ' + curOwnerId);
            List<ZPAPER__zStack__c> stackList = new List<ZPAPER__zStack__c>();
            stackList.add(curStack);
            ApexPages.StandardSetController stdSetController = new ApexPages.StandardSetController(stackList);
            stdSetController.setSelected(stackList);
            zAcceptController controller = new zAcceptController(stdSetController);
            PageReference pageRef = controller.setOwnerAndRedirect();
            System.assert(NULL != pageRef);
            curStack = [select Id,OwnerId from ZPAPER__zStack__c where Id = :stack.Id];
            System.debug('@@@ New owner: ' + curStack.OwnerId);
            System.assertNotEquals(curOwnerId, curStack.OwnerId);
        }
        Test.stopTest();
    }
}