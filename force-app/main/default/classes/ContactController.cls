/**
 * @description       : Contact Comtroller class
 *
 * @author            : Kunal Karekar
 * @group             : Contact
 * @last modified on  :
 * @last modified by  :
 *
 * Modifications Log
 * Ver   Date         Author                     	       Modification
 * 1.0   05-09-2023   Kunal Karekar					       Initial version
 */

public with sharing class ContactController {
  /**
   * @description Search person accounts with the given input string
   * @return      List<Contact> - List of Contacts
   */
  @AuraEnabled(cacheable=true scope='global')
  public static List<Contact> getContacts() {
    List<Contact> lstContact;
            
    try {
        ContactsSvcImpl c = new ContactsSvcImpl();
      lstContact = c.fetchContacts();
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    } 

    return lstContact;
  }

}