/**
 * @description       : Contact Comtroller Test class
 *
 * @author            : Kunal Karekar
 * @group             : Contact
 * @last modified on  :
 * @last modified by  :
 *
 * Modifications Log
 * Ver   Date         Author                     	       Modification
 * 1.0   06-09-2023   Kunal Karekar					       Initial version
 */
@isTest
public class ContactControllerTest {

    @TestSetup
    static void makeData() {
      List<Contact> lstCont = TestDataFactory.createContacts(true, 5);
    }
  
    @isTest
    static void searchPersonAccountsBlankSearchTest() {
      Test.startTest();
      List<Contact> lstAcc = ContactController.getContacts();
      Test.stopTest();
      System.assertEquals(5, lstAcc.size(), 'Invalid query result');
    }    

}