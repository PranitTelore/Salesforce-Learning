import { LightningElement, api } from 'lwc';

export default class ChildComponent extends LightningElement {
    constructor(){
        super();
        console.log('Inside Child Constr');
    }

    connectedCallback(){
        console.log("Inside Child, Connected Callbvack");
    }

    renderedCallback(){
        console.log('Inside Child renderedCallback');
    }
}