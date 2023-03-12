package com.ionic.springboot.entities;

import javax.persistence.*;

@Entity
@Table(name = "PRODUSE")
public class Produse {

    @Id
    @Column(name = "ID_PRODUS")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idProdus;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "NUME_FURNIZOR")
    private Furnizori furnizori;

    @Column(name = "PRET_PRODUS")
    private Long pret;

    @Column(name = "DENUMIRE_PRODUS")
    private String denumireProdus;

    @Column(name = "TIP_PRODUS")
    private String tipProdus;

    public Long getIdProdus() {
        return idProdus;
    }

    public void setIdProdus(Long idProdus) {
        this.idProdus = idProdus;
    }

    public Furnizori getFurnizori() {
        return furnizori;
    }

    public void setFurnizori(Furnizori furnizori) {
        this.furnizori = furnizori;
    }

    public Long getPret() {
        return pret;
    }

    public void setPret(Long pret) {
        this.pret = pret;
    }

    public String getDenumireProdus() {
        return denumireProdus;
    }

    public void setDenumireProdus(String denumireProdus) {
        this.denumireProdus = denumireProdus;
    }

    public String getTipProdus() {
        return tipProdus;
    }

    public void setTipProdus(String tipProdus) {
        this.tipProdus = tipProdus;
    }
}
