import { LightningElement, api, wire } from 'lwc';
import getContactList from '@salesforce/apex/class1.getContactList';
import getAccountDetails from '@salesforce/apex/class1.getAccountDetails';

export default class Component1 extends LightningElement {
    greeting = "Hello from Salesforce";
    inputText = "";
    result;
    error;

    @api message = "This is a Simple message";

    handleClick(event) {
        this.inputText = event.target.value;
    }

    /*
        1. Get class
        2. Create Aura enabled method
        3. Import the APEX method to LWC
        4. Use @ wire to call the method it can be used to call the already existing methods provided by salesforce
    */
    //call with wire method
    @wire(getContactList)
    wiredData({error, data}) {
        if(data) {
            this.result = data;
            this.error = undefined;
            window.console.log(data);
        } else if (error) {
            this.error = error;
            this.result = undefined;
        }
    }

    handleSubmit() {
        // imperetive method
        getAccountDetails()
        .then(result => {
            this.result = result;
            this.error = undefined;
        })
        .catch(error => {
            this.error = error;
            this.result = undefined;
        });
    }
}
