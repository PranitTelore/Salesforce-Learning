import { LightningElement, wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import { registerListener } from 'c/pubSubModel'; 

export default class SubscriberComponent extends LightningElement {

   receivedValue;

    @wire(CurrentPageReference) pageRef;

    connectedCallback() {
        registerListener('parentPublisher', this.handlePublisherMethod, this);
    }

    handlePublisherMethod(data) {
        this.receivedValue = data;
    }
}

