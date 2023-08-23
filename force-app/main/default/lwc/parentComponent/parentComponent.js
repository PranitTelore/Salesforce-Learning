import { LightningElement, track, wire } from 'lwc';
import accRecords from '@salesforce/apex/LWCController.accRecords';

export default class TrackComponent extends LightningElement {

  showTable=false;

      @track   fetchedAccounts;

    handleClick(){
      accRecords().then(result =>{
        this.showTable=true;
        this.fetchedAccounts=result;
      }).catch(error=>{
          console.log("Error Message :"+error);
      })
    }
}
