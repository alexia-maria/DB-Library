import { Component, OnInit } from '@angular/core';
import { GenericService } from '../../services/generic.service';
import { SharedInfoService } from '../../services/shared-info.service';

@Component({
  selector: 'app-pctc',
  templateUrl: './pctc.component.html',
  styleUrls: ['./pctc.component.css']
})
export class PctcComponent implements OnInit {
    constructor(private genericService: GenericService, public sharedInfo: SharedInfoService) {
        
    }

    ngOnInit() {
        this.sharedInfo.getPctc();
    }
 

}
