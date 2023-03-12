import { Component, OnInit } from '@angular/core';
import { DetaliiTranzactii } from '../../entities/DetaliiTranzactii';
import { Produse } from '../../entities/Produse';
import { Tranzactii } from '../../entities/Tranzactii';
import { GenericService } from '../../services/generic.service';
import { SharedInfoService } from '../../services/shared-info.service';

@Component({
  selector: 'app-detalii-tranzactii',
  templateUrl: './detalii-tranzactii.component.html',
  styleUrls: ['./detalii-tranzactii.component.css']
})
export class DetaliiTranzactiiComponent implements OnInit {


    selectedTranzactie: Tranzactii;
    selectedProdus: Produse;
    selectedCantitate: number;
    selectedPret: number;
    identificatorModificat: number;

    isModifica: boolean = false;

    addPage: boolean = false;
    constructor(private genericService: GenericService, public sharedInfo: SharedInfoService) { }

    ngOnInit() {
        this.sharedInfo.getAllDetaliiTranzactii();
        this.sharedInfo.getProduse();
        this.sharedInfo.getTranzactii();
    }




    stergeDetaliiTranzactii(dt: DetaliiTranzactii) {
        this.genericService.stergeDetaliiTranzactii(dt).subscribe(res => {
            this.sharedInfo.getAll();
            window.alert("Detaliu Tranzactii sters cu succes!");
        }, err => console.log(err))
    }

    adaugaPage() {
        this.addPage = true;
        this.isModifica = false;


    }

    modifica(dt: DetaliiTranzactii) {
        this.addPage = true;
        this.isModifica = true;
        this.selectedTranzactie = this.sharedInfo.tranzactii.filter(tr => tr.idTranzactie == dt.tranzactii.idTranzactie)[0];
        this.selectedProdus = this.sharedInfo.produse.filter(pr => pr.idProdus == dt.produse.idProdus)[0];
        this.selectedPret = dt.pret;
        this.selectedCantitate = dt.cantitate;

        this.identificatorModificat = dt.identificatior;
    }

    modificaDT() {
        let dt: DetaliiTranzactii = new DetaliiTranzactii;

        if (!this.selectedTranzactie) return;
        if (!this.selectedProdus) return;
        if (!this.selectedPret) return;
        if (!this.selectedCantitate) return;

        dt.tranzactii = this.selectedTranzactie;
        dt.produse = this.selectedProdus;
        dt.pret = this.selectedPret;
        dt.cantitate = this.selectedCantitate;


        dt.identificatior = this.identificatorModificat;

        this.genericService.modificaDetaliiTranzactii(dt).subscribe(res => {
            this.sharedInfo.getAll();

            this.addPage = false;

            window.alert("Detaliu tranzactii modiifcat cu succes!");
        }, err => console.log(err))
    }

    adaugaDT() {
        let dt: DetaliiTranzactii = new DetaliiTranzactii;

        if (!this.selectedTranzactie) return;
        if (!this.selectedProdus) return;
        if (!this.selectedPret) return;
        if (!this.selectedCantitate) return;

        dt.tranzactii = this.selectedTranzactie;
        dt.produse = this.selectedProdus;
        dt.pret = this.selectedPret;
        dt.cantitate = this.selectedCantitate;



        this.genericService.adaugaDetaliiTranzactii(dt).subscribe(res => {
            this.sharedInfo.getAll();
            this.addPage = false;

            window.alert("Detaliu tranzactii adaugat cu succes!");
        }, err => console.log(err))
    }

}
