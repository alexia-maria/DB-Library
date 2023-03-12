import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { SharedInfoService } from 'src/app/services/shared-info.service';
import { Angajati } from '../../entities/Angajati';
import { GenericService } from '../../services/generic.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
    angajati: Angajati[]=[];


    constructor(private sharedInfo: SharedInfoService, private genericService: GenericService) { }
    ngOnInit() {
        // Get the element with id="defaultOpen" and click on it
        document.getElementById("defaultOpen").click();
    }

    openPage(pageName, elmnt, color) {
                // Hide all elements with class="tabcontent" by default */
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
             }

        document.getElementById(pageName).style.display = "block";


            }


    getAngajati() {
        this.genericService.getAllAngajati().subscribe(res => this.angajati = res, err => console.log(err));
    }



   
}
