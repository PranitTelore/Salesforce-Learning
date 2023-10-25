import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ToastMessageComponent extends LightningElement {

infoButton(){
    const event = new ShowToastEvent({
        title : 'Info Toast',
        message : 'Info Toast Message',
        variant : 'info',
        mode : 'Dismissible'
        
    });
    this.dispatchEvent(event);
}

sucessButton(){
    const event = new ShowToastEvent({
        title : 'Success Toast',
        message : 'Sucess Toast Message',
        variant : 'sucess',
        mode :'Pester'
    });
    this.dispatchEvent(event);
}
warningButton(){
 const event = new ShowToastEvent({
    title : 'Warning',
    message : 'Warning Toast Message',
    variant : 'warning',
    mode : 'Sticky'

 });
this.dispatchEvent(event);
  
}
errorButton(){
    const event = new ShowToastEvent({
        title :'Error Toast',
        message : 'Hey Pranit this is warning for you',
        variant :'error',
        mode: 'Pester'

    });
    this.dispatchEvent(event);
}

}