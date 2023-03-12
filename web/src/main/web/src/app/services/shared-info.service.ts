import { Injectable } from '@angular/core';
import { Angajati } from '../entities/Angajati';
import { Clienti } from '../entities/Clienti';
import { Departamente } from '../entities/Departamente';
import { DetaliiTranzactii } from '../entities/DetaliiTranzactii';
import { Furnizori } from '../entities/Furnizori';
import { Locatii } from '../entities/Locatii';
import { Produse } from '../entities/Produse';
import { Tranzactii } from '../entities/Tranzactii';
import { GenericService } from './generic.service';

@Injectable({
  providedIn: 'root'
})
export class SharedInfoService {

    angajati: Angajati[] = [];
    clienti: Clienti[] = [];
    detaliiTranzactii: DetaliiTranzactii[] = [];
    furnizori: Furnizori[] = [];
    tranzactii: Tranzactii[] = [];
    produse: Produse[] = [];
    locatii: Locatii[] = [];
    departamente: Departamente[] = [];
    pctcQuery: string[][];
    pctdQuery: string[][];
    furnizoriView: string[][];
    tranzactiiView: string[][];
    constructor(private genericService: GenericService) { }

    getAll() {
        this.getAngajati();
        this.getLocatii();
        this.getTranzactii();
        this.getDepartamente();
        this.getPctc();
        this.getPctd();
        this.getAllFurnizori();
        this.getVFurnizori();
        this.getProduse()
        this.getVTranzactii();
        this.getClienti()
        this.getAllDetaliiTranzactii();
    }
    getAllFurnizori() {
        this.genericService.getAllFurnizori().subscribe(res => this.furnizori = res, err => console.log(err));
    }
    getProduse() {
        this.genericService.getAllProduse().subscribe(res => this.produse = res, err => console.log(err));
    }
    getTranzactii() {
        this.genericService.getAllTranzactii().subscribe(res => this.tranzactii = res, err => console.log(err));
    }
    getAllDetaliiTranzactii() {

        this.genericService.getAllDetaliiTranzactii().subscribe(res => this.detaliiTranzactii = res, err => console.log(err));
    }

    getAngajati() {
        this.genericService.getAllAngajati().subscribe(res => this.angajati = res, err => console.log(err));
    }

    getDepartamente() {
        this.genericService.getAllDepartamente().subscribe(res => this.departamente = res, err => console.log(err));
    }
    getClienti() {
        this.genericService.getAllClienti().subscribe(res => this.clienti = res, err => console.log(err));

    }

    getLocatii() {
        this.genericService.getAllLocatii().subscribe(res => this.locatii = res, err => console.log(err));
    }


    getPctc() {
        this.genericService.getQueryPctC().subscribe(res => {
            this.pctcQuery = res
        }, err => console.log(err))
    }

    getPctd() {
        this.genericService.getQueryPctD().subscribe(res => {
            this.pctdQuery = res
        }, err => console.log(err))
    }

    getVFurnizori() {
        this.genericService.selectDinVFurnizori().subscribe(res => {
            this.furnizoriView = res
        }, err => console.log(err))
    }

    getVTranzactii() {
        this.genericService.selectDinVTranzactii().subscribe(res => {
            this.tranzactiiView = res
        }, err => console.log(err))
    }


    
}
