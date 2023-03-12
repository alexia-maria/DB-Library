import { Component, OnInit } from '@angular/core';
import { Furnizori } from '../../entities/Furnizori';
import { Produse } from '../../entities/Produse';
import { GenericService } from '../../services/generic.service';
import { SharedInfoService } from '../../services/shared-info.service';

@Component({
  selector: 'app-produse',
  templateUrl: './produse.component.html',
  styleUrls: ['./produse.component.css']
})
export class ProduseComponent implements OnInit {


    selectedFurnizor: Furnizori;
    selectedPret: number;
    selectedDenumire: string;
    selectedTip: string;
    idProdusModificat: number;

    isModifica: boolean = false;

    addPage: boolean = false;
    constructor(private genericService: GenericService, public sharedInfo: SharedInfoService) { }

    ngOnInit() {
        this.sharedInfo.getAllFurnizori();
        this.sharedInfo.getProduse();
    }




    stergeProdus(pr: Produse) {
        this.genericService.stergeProdus(pr).subscribe(res => {
            this.sharedInfo.getAll();
            window.alert("Tranzactie stearsa cu succes!");
        }, err => console.log(err))
    }

    adaugaPage() {
        this.addPage = true;
        this.isModifica = false;


    }

    modifica(pr: Produse) {
        this.addPage = true;
        this.isModifica = true;
        this.selectedFurnizor = this.sharedInfo.furnizori.filter(fu => fu.numeFurnizor == pr.furnizori.numeFurnizor)[0];
        this.idProdusModificat = pr.idProdus;
        this.selectedPret = pr.pret;
        this.selectedDenumire = pr.denumireProdus;
        this.selectedTip = pr.tipProdus;
    }

    modificaPr() {
        let pr: Produse = new Produse;

        if (!this.selectedFurnizor) return;
        if (!this.selectedPret) return;
        if (!this.selectedDenumire) return;
        if (!this.selectedTip) return;

        pr.idProdus = this.idProdusModificat;
        pr.furnizori = this.selectedFurnizor;
        pr.pret = this.selectedPret;
        pr.denumireProdus = this.selectedDenumire;
        pr.tipProdus = this.selectedTip;


        this.genericService.modificaProdus(pr).subscribe(res => {
            this.sharedInfo.getAll();
            this.addPage = false;
            window.alert("Produs modificat cu succes!");
        }, err => console.log(err))
    }


    adaugaPr() {
        let pr: Produse = new Produse;

        if (!this.selectedFurnizor) return;
        if (!this.selectedPret) return;
        if (!this.selectedDenumire) return;
        if (!this.selectedTip) return;

        pr.furnizori = this.selectedFurnizor;
        pr.pret = this.selectedPret;
        pr.denumireProdus = this.selectedDenumire;
        pr.tipProdus = this.selectedTip;


        this.genericService.adaugaProdus(pr).subscribe(res => {
            this.sharedInfo.getAll();
            this.addPage = false;
            window.alert("Produs adaugat cu succes!");
        }, err => console.log(err))
    }
}
