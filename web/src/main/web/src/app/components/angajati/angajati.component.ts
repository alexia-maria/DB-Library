import { Component, OnInit } from '@angular/core';
import { Angajati } from '../../entities/Angajati';
import { Clienti } from '../../entities/Clienti';
import { Departamente } from '../../entities/Departamente';
import { Locatii } from '../../entities/Locatii';
import { GenericService } from '../../services/generic.service';
import { SharedInfoService } from '../../services/shared-info.service';

@Component({
  selector: 'app-angajati',
  templateUrl: './angajati.component.html',
  styleUrls: ['./angajati.component.css']
})
export class AngajatiComponent implements OnInit {

    selectedLocatie: Locatii;
    selectedDepartament: Departamente;
    selectedFunctie: string;
    selectedNume: string;
    selectedPrenume: string;
    selectedSalariu: number;
    selectedDataAngajarii: string;
    idAngajatModificat: number;

    isModifica: boolean = false;

    addPage: boolean = false;
    constructor(private genericService: GenericService, public sharedInfo: SharedInfoService) { }

    ngOnInit() {
        this.sharedInfo.getAngajati();
        this.sharedInfo.getLocatii();
        this.sharedInfo.getDepartamente();
  }




    stergeAngajat(angajat: Angajati) {
        this.genericService.stergeAngajat(angajat).subscribe(res => {
            this.sharedInfo.getAll();
            window.alert("Angajat sters cu succes!");
        }, err => console.log(err))
    }

    adaugaPage() {
        this.addPage = true;
        this.isModifica = false;
        

    }   

    modifica(angajat:Angajati) {
        this.addPage = true;
        this.isModifica = true;
        this.selectedLocatie = this.sharedInfo.locatii.filter(loc => loc.idLocatie == angajat.locatie.idLocatie)[0];
        this.selectedDepartament = this.sharedInfo.departamente.filter(dep => dep.numarDepartament == angajat.departament.numarDepartament)[0];
        this.selectedFunctie = angajat.functie;
        this.selectedNume = angajat.nume;
        this.selectedPrenume = angajat.prenume;
        this.selectedSalariu = angajat.salariu;
        let dataAng = new Date(angajat.dataAngajarii);
        dataAng.setDate(dataAng.getDate() + 1);
        this.selectedDataAngajarii = dataAng.toISOString().split('T')[0];;
        this.idAngajatModificat = angajat.idAngajat;
    }

    modificaAngajatul() {
            let angajat: Angajati = new Angajati;

            if (!this.selectedLocatie) return;
            if (!this.selectedDepartament) return;
            if (!this.selectedFunctie) return;
            if (!this.selectedNume) return;
            if (!this.selectedPrenume) return;
            if (!this.selectedSalariu) return;
            if (!this.selectedDataAngajarii) return;

            angajat.locatie = this.selectedLocatie
            angajat.departament = this.selectedDepartament
            angajat.functie = this.selectedFunctie
            angajat.nume = this.selectedNume
            angajat.prenume = this.selectedPrenume
            angajat.salariu = this.selectedSalariu
            angajat.dataAngajarii = new Date(this.selectedDataAngajarii)



        angajat.idAngajat = this.idAngajatModificat;

        this.genericService.modificaAngajat(angajat).subscribe(res => {
                this.addPage = false;
            this.sharedInfo.getAll();

                window.alert("Angajat modificat cu succes!");
            }, err => console.log(err))
    }

    adaugaAngajatul() {
        let angajat: Angajati = new Angajati;

        if (!this.selectedLocatie) return;
        if (!this.selectedDepartament) return;
        if (!this.selectedFunctie) return;
        if (!this.selectedNume) return;
        if (!this.selectedPrenume) return;
        if (!this.selectedSalariu) return;
        if (!this.selectedDataAngajarii) return;

        angajat.locatie = this.selectedLocatie
        angajat.departament = this.selectedDepartament
        angajat.functie = this.selectedFunctie
        angajat.nume = this.selectedNume
        angajat.prenume = this.selectedPrenume
        angajat.salariu = this.selectedSalariu
        angajat.dataAngajarii = new Date(this.selectedDataAngajarii);

        this.genericService.adaugaAngajat(angajat).subscribe(res => {
            this.addPage = false;
            this.sharedInfo.getAll();

            window.alert("Angajat adaugat cu succes!");
        }, err=>console.log(err))
    }
}
