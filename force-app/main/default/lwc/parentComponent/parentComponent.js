import { LightningElement, track } from 'lwc';

export default class TrackComponent extends LightningElement {
    
    @track
    fullName = {
        firstName: "First Name",
        lastName: "Last Name"
    }

    handleInput(event) {
        console.log('Handle input is running');
        if(event.target.name == 'firstName') {
            this.fullName.firstName = event.target.value;
        }

        else if(event.target.name == 'lastName') {
            this.fullName.lastName = event.target.value;
        }

        console.log('fullName property value : '+JSON.stringify(this.fullName));
    }
}
