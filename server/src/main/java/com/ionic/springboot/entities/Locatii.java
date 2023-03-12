package com.ionic.springboot.entities;

import javax.persistence.*;

@Entity
@Table(name = "LOCATII")
public class Locatii {

    @Id
    @Column(name = "ID_LOCATIE")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idLocatie;

    @Column(name = "DENUMIRE_LOCATIE")
    private String denumireLocatie;

    @Column(name = "STRADA")
    private String strada;

    @Column(name = "ORAS")
    private String oras;

    @Override
    public String toString() {
        return "Locatii{" +
                "idLocatie=" + idLocatie +
                ", denumireLocatie='" + denumireLocatie + '\'' +
                ", strada='" + strada + '\'' +
                ", oras='" + oras + '\'' +
                ", tara='" + tara + '\'' +
                '}';
    }

    @Column(name = "TARA")
    private String tara;


    public Long getIdLocatie() {
        return idLocatie;
    }

    public void setIdLocatie(Long idLocatie) {
        this.idLocatie = idLocatie;
    }

    public String getDenumireLocatie() {
        return denumireLocatie;
    }

    public void setDenumireLocatie(String denumireLocatie) {
        this.denumireLocatie = denumireLocatie;
    }

    public String getStrada() {
        return strada;
    }

    public void setStrada(String strada) {
        this.strada = strada;
    }

    public String getOras() {
        return oras;
    }

    public void setOras(String oras) {
        this.oras = oras;
    }

    public String getTara() {
        return tara;
    }

    public void setTara(String tara) {
        this.tara = tara;
    }
}
