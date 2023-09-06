/**
 * @description       : Test data factory class
 *
 * @author            : Kunal Karekar
 * @group             :
 * @last modified on  : 06-09-2023
 * @last modified by  :
 *
 * Modifications Log
 * Ver   Date         Author                     	           Modification
 * 1.0   06-09-2023   Kunal Karekar                            Initial version
 */

@isTest
public class TestDataFactory {
  public static List<Contact> createContacts(
    Boolean doInsert,
    Integer count
  ) {
    List<Contact> lstCont = new List<Contact>();

    for (Integer i = 0; i < count; i++) {
      Contact a = new Contact(
        firstName = 'Test ' + i,
        LastName = 'Last Name ' + i,
        Email = 'email.test' + i + '@test.com'
      );
      lstCont.add(a);
    }
    if (doInsert) {
      insert lstCont;
    }
    return lstCont;
  }
}