package com.ionic.springboot.entities;

import javax.persistence.*;

@Entity
@Table(name = "DEPARTAMENTE")
public class Departamente {

    @Id
    @Column(name = "NUMAR_DEPARTAMENT")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long numarDepartament;

    @Column(name = "DENUMIRE_DEPARTAMENT")
    private String denumireDepartament;

    public Long getNumarDepartament() {
        return numarDepartament;
    }

    public void setNumarDepartament(Long numarDepartament) {
        this.numarDepartament = numarDepartament;
    }

    public String getDenumireDepartament() {
        return denumireDepartament;
    }

    public void setDenumireDepartament(String denumireDepartament) {
        this.denumireDepartament = denumireDepartament;
    }
}
