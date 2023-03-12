import { Component, OnInit } from '@angular/core';
import { GenericService } from '../../services/generic.service';
import { SharedInfoService } from '../../services/shared-info.service';

@Component({
  selector: 'app-selectvfurnizori',
  templateUrl: './selectvfurnizori.component.html',
  styleUrls: ['./selectvfurnizori.component.css']
})
export class SelectvfurnizoriComponent implements OnInit {
    constructor(private genericService: GenericService, public sharedInfo: SharedInfoService) { }

    ngOnInit() {
        this.sharedInfo.getVFurnizori();

  }

}
