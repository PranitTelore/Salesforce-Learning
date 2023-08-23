import { LightningElement } from 'lwc';

export default class TestComponent extends LightningElement {
    age;
    eligible=false;
    NotEligible=false;

   
     handleInput(event){
        this.age=event.target.value;

        if(this.age==''){
            this.eligible=false;
            this.NotEligible=false;
        }else if(this.age<18 && this.age>0){
            this.eligible=false;
            this.NotEligible=true;
        }else if(this.age>18 && this.age<100){
            this.eligible=true;
            this.NotEligible=false;
        }else{
            this.eligible=false;
            this.NotEligible=false;
        }

     }

    }
