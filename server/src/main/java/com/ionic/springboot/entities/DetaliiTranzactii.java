package com.ionic.springboot.entities;

import javax.persistence.*;

@Entity
@Table(name = "DETALII_TRANZACTII")
public class DetaliiTranzactii {

    @Id
    @Column(name = "IDENTIFICATOR")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long identificatior;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_TRANZACTIE")
    private Tranzactii tranzactii;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_PRODUS")
    private Produse produse;

    @Column(name = "CANTITATE")
    private Long cantitate;

    @Column(name = "PRET")
    private Long pret;

    public Long getIdentificatior() {
        return identificatior;
    }

    public void setIdentificatior(Long identificatior) {
        this.identificatior = identificatior;
    }

    public Tranzactii getTranzactii() {
        return tranzactii;
    }

    public void setTranzactii(Tranzactii tranzactii) {
        this.tranzactii = tranzactii;
    }

    public Produse getProduse() {
        return produse;
    }

    public void setProduse(Produse produse) {
        this.produse = produse;
    }

    public Long getCantitate() {
        return cantitate;
    }

    public void setCantitate(Long cantitate) {
        this.cantitate = cantitate;
    }

    public Long getPret() {
        return pret;
    }

    public void setPret(Long pret) {
        this.pret = pret;
    }
}
