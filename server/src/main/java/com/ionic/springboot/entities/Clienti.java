package com.ionic.springboot.entities;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "CLIENTI")
public class Clienti {

    @Id
    @Column(name = "ID_CLIENT")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idClient;

    @Column(name = "IDENTIFICATOR_CLIENT")
    private String identificatorClient;

    @Column(name = "NUME")
    private String nume;

    @Column(name = "PRENUME")
    private String prenume;


    @Column(name = "DATA_INSCRIERII")
    private Date dataInscrierii;

    public Long getIdClient() {
        return idClient;
    }

    public void setIdClient(Long idClient) {
        this.idClient = idClient;
    }

    public String getIdentificatorClient() {
        return identificatorClient;
    }

    public void setIdentificatorClient(String identificatorClient) {
        this.identificatorClient = identificatorClient;
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

    public Date getDataInscrierii() {
        return dataInscrierii;
    }

    public void setDataInscrierii(Date dataInscrierii) {
        this.dataInscrierii = dataInscrierii;
    }
}
