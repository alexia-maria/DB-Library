package com.ionic.springboot.entities;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "ANGAJATI")
public class Angajati {

    @Id
    @Column(name = "ID_ANGAJAT")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idAngajat;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_LOCATIE")
    private Locatii locatie;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "NUMAR_DEPARTAMENT")
    private Departamente departament;

    @Column(name = "FUNCTIE")
    private String functie;

    @Column(name = "NUME")
    private String nume;

    @Column(name = "PRENUME")
    private String prenume;

    @Column(name = "SALARIU")
    private Long salariu;

    @Column(name = "DATA_ANGAJARII")
    private Date dataAngajarii;

    public Long getIdAngajat() {
        return idAngajat;
    }

    public void setIdAngajat(Long idAngajat) {
        this.idAngajat = idAngajat;
    }

    public Locatii getLocatie() {
        return locatie;
    }

    public void setLocatie(Locatii locatie) {
        this.locatie = locatie;
    }

    public Departamente getDepartament() {
        return departament;
    }

    public void setDepartament(Departamente departament) {
        this.departament = departament;
    }

    public String getFunctie() {
        return functie;
    }

    public void setFunctie(String functie) {
        this.functie = functie;
    }

    public String getNume() {
        return nume;
    }

    public void setNume(String nume) {
        this.nume = nume;
    }

    public String getPrenume() {
        return prenume;
    }

    public void setPrenume(String prenume) {
        this.prenume = prenume;
    }

    public Long getSalariu() {
        return salariu;
    }

    public void setSalariu(Long salariu) {
        this.salariu = salariu;
    }

    public Date getDataAngajarii() {
        return dataAngajarii;
    }

    public void setDataAngajarii(Date dataAngajarii) {
        this.dataAngajarii = dataAngajarii;
    }
}
