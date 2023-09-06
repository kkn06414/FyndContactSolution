import { LightningElement, wire } from "lwc";
import getContacts from "@salesforce/apex/ContactController.getContacts";
  
export default class ContactList extends LightningElement {


  columns = [
    {
      label: "First Name",
      fieldName: "FirstName",
      type: "text",
      sortable: true
    },
    {
      label: "Last Name",
      fieldName: "LastName",
      type: "text",
      sortable: true
    },
    {
        label: "Email Address",
        fieldName: "Email",
        type: "Email",
        sortable: true
      }    
  ];

  @wire(getContacts)
  contactData;

}