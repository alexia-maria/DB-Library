import { Component, OnInit } from '@angular/core';
import { Clienti } from '../../entities/Clienti';
import { GenericService } from '../../services/generic.service';
import { SharedInfoService } from '../../services/shared-info.service';

@Component({
  selector: 'app-clienti',
  templateUrl: './clienti.component.html',
  styleUrls: ['./clienti.component.css']
})
export class ClientiComponent implements OnInit {
    selectedIdentificator: string;
    selectedNume: string;
    selectedPrenume: string;
    selectedDataInscrierii: string;

    idClientModificat: number;
    isModifica: boolean = false;

    addPage: boolean = false;

    constructor(private genericService: GenericService, public sharedInfo: SharedInfoService) { }

    ngOnInit() {
        this.sharedInfo.getClienti();
    }

 



    stergeClient(client: Clienti) {
        this.genericService.stergeClient(client).subscribe(res => {
            this.sharedInfo.getAll();
            window.alert("Client sters cu succes!");
        }, err => console.log(err))
    }

    adaugaPage() {
        this.addPage = true;
        this.isModifica = false;

    }

    modifica(cli: Clienti) {
        this.addPage = true;
        this.isModifica = true;
        this.selectedIdentificator = cli.identificatorClient;
        this.selectedNume = cli.nume;
        this.selectedPrenume = cli.prenume;
        let dataInscrierii = new Date(cli.dataInscrierii);
        dataInscrierii.setDate(dataInscrierii.getDate() + 1);
        this.selectedDataInscrierii = dataInscrierii.toISOString().split('T')[0];;

        this.idClientModificat = cli.idClient;

    }

    modificaClient() {

        let client: Clienti = new Clienti;

        if (!this.selectedIdentificator) return;
        if (!this.selectedNume) return;
        if (!this.selectedPrenume) return;
        if (!this.selectedDataInscrierii) return;


        client.identificatorClient = this.selectedIdentificator
        client.nume = this.selectedNume
        client.prenume = this.selectedPrenume
        client.dataInscrierii = new Date(this.selectedDataInscrierii)
        client.idClient = this.idClientModificat;

        this.genericService.modificaClient(client).subscribe(res => {
            this.addPage = false;
            this.sharedInfo.getAll();

            window.alert("Client modificat cu succes!");
        }, err => console.log(err))
    }


    adaugaClient() {
        let client: Clienti = new Clienti;

        if (!this.selectedIdentificator) return;
        if (!this.selectedNume) return;
        if (!this.selectedPrenume) return;
        if (!this.selectedDataInscrierii) return;
      

        client.identificatorClient = this.selectedIdentificator
        client.nume = this.selectedNume
        client.prenume = this.selectedPrenume
        client.dataInscrierii =  new Date (this.selectedDataInscrierii)
   

        this.genericService.adaugaClient(client).subscribe(res => {
            this.addPage = false;
            this.sharedInfo.getAll();

            window.alert("Client adaugat cu succes!");
        }, err => console.log(err))
    }
}
