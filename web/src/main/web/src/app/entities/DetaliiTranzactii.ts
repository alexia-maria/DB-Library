import { Produse } from "./Produse";
import { Tranzactii } from "./Tranzactii";

export class DetaliiTranzactii {
    identificatior?: number;
    tranzactii?: Tranzactii;
    produse?: Produse;
    cantitate?: number;
    pret?: number;


}