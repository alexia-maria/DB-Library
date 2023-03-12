import { Component, OnInit } from '@angular/core';
import { GenericService } from '../../services/generic.service';
import { SharedInfoService } from '../../services/shared-info.service';

@Component({
  selector: 'app-pctd',
  templateUrl: './pctd.component.html',
  styleUrls: ['./pctd.component.css']
})
export class PctdComponent implements OnInit {
    constructor(private genericService: GenericService, public sharedInfo: SharedInfoService) {

    }

    ngOnInit() {
        this.sharedInfo.getPctd();
    }
  

}
