import { Angajati } from "./Angajati";
import { Clienti } from "./Clienti";

export class Tranzactii {
    idTranzactie?: number;
    clienti?: Clienti;
    angajati?: Angajati;
    dataTranzactiei?: Date;

}