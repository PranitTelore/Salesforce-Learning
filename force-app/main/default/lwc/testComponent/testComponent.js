import { LightningElement } from 'lwc';

export default class TestComponent extends LightningElement {
 firstName;
 lastName;

 handleInput(event){
     if(event.target.name=='firstName'){
        this.firstName=event.target.value;

     }else if(event.target.name=='lastName'){
        this.lastName=event.target.value;
     }
 }

 handleButtonClick(){
    console.log('Fist Name ='+this.firstName);
    alert('Last Name ='+this.lastName);
 }

}