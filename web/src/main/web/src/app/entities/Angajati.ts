import { Departamente } from "./Departamente";
import { Locatii } from "./Locatii";

export class Angajati {
    idAngajat?: number;
    locatie?: Locatii;
    departament?: Departamente;
    functie?: string;
    nume?: string;
    prenume?: string;
    salariu?: number;
    dataAngajarii?:Date;
}