import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Angajati } from '../entities/Angajati';
import { Clienti } from '../entities/Clienti';
import { Departamente } from '../entities/Departamente';
import { DetaliiTranzactii } from '../entities/DetaliiTranzactii';
import { Furnizori } from '../entities/Furnizori';
import { Locatii } from '../entities/Locatii';
import { Produse } from '../entities/Produse';
import { Tranzactii } from '../entities/Tranzactii';


@Injectable({
  providedIn: 'root'
})
export class GenericService {

    constructor(private http: HttpClient) { }


    getAllAngajati(): Observable<Angajati[]> {
        return this.http.get<Angajati[]>("api/angajati/getAll");
    }

    adaugaAngajat(angajat: Angajati) : Observable<Angajati> {
        return this.http.post<Angajati>("api/angajati/adauga", angajat);
    }

    stergeAngajat(angajat: Angajati): Observable<any> {
        return this.http.post<Angajati>("api/angajati/sterge", angajat);
    }


    modificaAngajat(angajat: Angajati): Observable<Angajati> {
        return this.http.post<Angajati>("api/angajati/modifica", angajat);
    }


    getQueryPctC(): Observable<string[][]> {
        return this.http.get<string[][]>("api/angajati/querypctc");
    }

    getQueryPctD(): Observable<string[][]> {
        return this.http.get<string[][]>("api/angajati/querypctd");
    }




     getAllClienti(): Observable < Clienti[] > {
            return this.http.get<Clienti[]>("api/clienti/getAll");
     }

    adaugaClient(client: Clienti): Observable<Clienti > {
        return this.http.post<Angajati>("api/clienti/adauga", client);
        }

    stergeClient(client: Clienti): Observable < any > {
        return this.http.post<Clienti>("api/clienti/sterge", client);
    }


    modificaClient(client: Clienti): Observable<Clienti> {
        return this.http.post<Angajati>("api/clienti/modifica", client);
    }


    getAllDepartamente(): Observable<Departamente[]> {
        return this.http.get<Departamente[]>("api/departamente/getAll");
    }

    adaugaDepartamente(departamente: Departamente): Observable<Departamente> {
        return this.http.post<Departamente>("api/departamente/adauga", departamente);
           
    }

    stergeDepartamente(departamente: Departamente): Observable<any> {
        return this.http.post<Departamente>("api/departamente/sterge", departamente);
    }





    getAllDetaliiTranzactii(): Observable<DetaliiTranzactii[]> {
        return this.http.get<DetaliiTranzactii[]>("api/detaliiTranzactii/getAll");
    }

    adaugaDetaliiTranzactii(detaliiTranzactii: DetaliiTranzactii): Observable<DetaliiTranzactii> {
        return this.http.post<DetaliiTranzactii>("api/detaliiTranzactii/adauga", detaliiTranzactii);

    }

    stergeDetaliiTranzactii(detaliiTranzactii: DetaliiTranzactii): Observable<any> {
        return this.http.post<DetaliiTranzactii>("api/detaliiTranzactii/sterge", detaliiTranzactii);
    }


    modificaDetaliiTranzactii(detliiTranzactii: DetaliiTranzactii): Observable<DetaliiTranzactii> {
        return this.http.post<DetaliiTranzactii>("api/detaliiTranzactii/modifica", detliiTranzactii);
    }


    getAllFurnizori(): Observable<Furnizori[]> {
        return this.http.get<Furnizori[]>("api/furnizori/getAll");
    }

    adaugaFurnizori(furnizori: Furnizori): Observable<Furnizori> {
        return this.http.post<Furnizori>("api/furnizori/adauga", furnizori);

    }

    stergeFurnizori(furnizori: Furnizori): Observable<any> {
        return this.http.post<Furnizori>("api/furnizori/sterge", furnizori);

    }



    selectDinVFurnizori(): Observable<string[][]> {
        return this.http.get<string[][]>("api/furnizori/selectdinv");

    }



    selectDinVTranzactii(): Observable<string[][]> {
        return this.http.get<string[][]>("api/tranzactii/selectdinv");

    }



    getAllLocatii(): Observable<Locatii[]> {
        return this.http.get<Locatii[]>("api/locatii/getAll");
    }


    adaugaLocatii(locatii: Locatii): Observable<Locatii> {
        return this.http.post<Locatii>("api/locatii/adauga", locatii);

    }

    stergeLocatii(locatii: Locatii): Observable<any> {
        return this.http.post<Locatii>("api/locatii/sterge", locatii);
    }


    getAllTranzactii(): Observable<Tranzactii[]> {
        return this.http.get<Tranzactii[]>("api/tranzactii/getAll");
    }


    adaugaTranzactii(tranzactii: Tranzactii): Observable<Tranzactii> {
        return this.http.post<Tranzactii>("api/tranzactii/adauga", tranzactii);

    }

    stergeTranzactii(tranzactii: Tranzactii): Observable<any> {
        return this.http.post<Tranzactii>("api/tranzactii/sterge", tranzactii);
    }

    modificaTranzactii(tranzactii: Tranzactii): Observable<Tranzactii> {
        return this.http.post<Tranzactii>("api/tranzactii/modifica", tranzactii);

    }




    getAllProduse(): Observable<Produse[]> {
        return this.http.get<Produse[]>("api/produse/getAll");
    }


    adaugaProdus(produs: Produse): Observable<Produse> {
        return this.http.post<Produse>("api/produse/adauga", produs);

    }

    stergeProdus(produs: Produse): Observable<any> {
        return this.http.post<Tranzactii>("api/produse/sterge", produs);
    }

    modificaProdus(produs: Produse): Observable<Produse> {
        return this.http.post<Produse>("api/produse/modifica", produs);

    }

}
