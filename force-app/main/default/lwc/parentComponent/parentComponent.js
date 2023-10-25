import { LightningElement, track, wire } from 'lwc';
import accRecords from '@salesforce/apex/LWCController.callFromLWC';
import Account_Name from '@salesforce/schema/Account.Name';
import Account_Type from '@salesforce/schema/Account.Type';
import Account_NUM from '@salesforce/schema/Account.AccountNumber';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class ParentComponent extends LightningElement {

 recordId='0015i00000xYUARAA4';
    
}