/**
 * @description       : Contact Service Layer Implementation
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
public with sharing class ContactsSvcImpl implements IContactsSvc {
  public List<Contact> fetchContacts() {
    List<Contact> lstContact = [
      SELECT FirstName, LastName, Email
      FROM Contact
      LIMIT 50000
    ];
    return lstContact;
  }
}