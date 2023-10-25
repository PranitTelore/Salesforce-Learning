import { LightningElement, wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import { fireEvent } from 'c/pubSubModel';


export default class PublisherComponent extends LightningElement {
          inputValue;

    @wire(CurrentPageReference) pageRef;

    handleChange(event) {
        this.inputValue = event.target.value;
    }

    publishData() {
        fireEvent(this.pageRef, 'parentPublisher', this.inputValue);
    }


    
}