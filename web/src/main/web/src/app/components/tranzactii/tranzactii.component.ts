import { Component, OnInit } from '@angular/core';
import { Angajati } from '../../entities/Angajati';
import { Clienti } from '../../entities/Clienti';
import { Tranzactii } from '../../entities/Tranzactii';
import { GenericService } from '../../services/generic.service';
import { SharedInfoService } from '../../services/shared-info.service';

@Component({
  selector: 'app-tranzactii',
  templateUrl: './tranzactii.component.html',
  styleUrls: ['./tranzactii.component.css']
})
export class TranzactiiComponent implements OnInit {


    selectedClient: Clienti;
    selectedAngajat: Angajati;
    selectedDataTranzactiei: string;
    idTranzactieModificate: number;

    isModifica: boolean = false;

    addPage: boolean = false;
    constructor(private genericService: GenericService, public sharedInfo: SharedInfoService) { }

    ngOnInit() {
        this.sharedInfo.getClienti();
        this.sharedInfo.getAngajati();
        this.sharedInfo.getTranzactii();
    }




    stergeTranzactie(tr: Tranzactii) {
        this.genericService.stergeTranzactii(tr).subscribe(res => {
            this.sharedInfo.getAll();
            window.alert("Tranzactie stearsa cu succes!");
        }, err => console.log(err))
    }

    adaugaPage() {
        this.addPage = true;
        this.isModifica = false;


    }

    modifica(tr: Tranzactii) {
        this.addPage = true;
        this.isModifica = true;
        this.selectedAngajat = this.sharedInfo.angajati.filter(an => an.idAngajat == tr.angajati.idAngajat)[0];
        this.selectedClient = this.sharedInfo.clienti.filter(cl => cl.idClient == tr.clienti.idClient)[0];
        let dataTr = new Date(tr.dataTranzactiei);
        dataTr.setDate(dataTr.getDate() + 1);
        this.selectedDataTranzactiei = dataTr.toISOString().split('T')[0];;

        this.idTranzactieModificate = tr.idTranzactie;
    }

    modificaTr() {
        let tr: Tranzactii = new Tranzactii;

        if (!this.selectedAngajat) return;
        if (!this.selectedClient) return;
        if (!this.selectedDataTranzactiei) return;

        tr.idTranzactie = this.idTranzactieModificate;
        tr.angajati = this.selectedAngajat;
        tr.clienti = this.selectedClient;
        tr.dataTranzactiei = new Date(this.selectedDataTranzactiei)

        this.genericService.modificaTranzactii(tr).subscribe(res => {
            this.sharedInfo.getAll();
            this.addPage = false;
            window.alert("Tranzactie modificata cu succes!");
        }, err => console.log(err))
    }


    adaugaTr() {
        let tr: Tranzactii = new Tranzactii;

        if (!this.selectedAngajat) return;
        if (!this.selectedClient) return;
        if (!this.selectedDataTranzactiei) return;

        tr.angajati = this.selectedAngajat;
        tr.clienti = this.selectedClient;
        tr.dataTranzactiei = new Date(this.selectedDataTranzactiei)

        this.genericService.adaugaTranzactii(tr).subscribe(res => {
            this.sharedInfo.getAll();
            this.addPage = false;
            window.alert("Tranzactie adaugata cu succes!");
        }, err => console.log(err))
    }

}
