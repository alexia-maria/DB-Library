import { Component, OnInit } from '@angular/core';
import { SharedInfoService } from '../../services/shared-info.service';

@Component({
  selector: 'app-selectvtranzactii',
  templateUrl: './selectvtranzactii.component.html',
  styleUrls: ['./selectvtranzactii.component.css']
})
export class SelectvtranzactiiComponent implements OnInit {

    constructor(public sharedInfo: SharedInfoService) { }

    ngOnInit() {
        this.sharedInfo.getVTranzactii();

  }

}
