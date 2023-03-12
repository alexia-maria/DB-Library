package com.ionic.springboot.entities;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "TRANZACTII")
public class Tranzactii {

    @Id
    @Column(name = "ID_TRANZACTIE")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idTranzactie;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_CLIENT")
    private Clienti clienti;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID_ANGAJAT")
    private Angajati angajati;

    @Column(name = "DATA_TRANZACTIEI")
    private Date dataTranzactiei;

    public Long getIdTranzactie() {
        return idTranzactie;
    }

    public void setIdTranzactie(Long idTranzactie) {
        this.idTranzactie = idTranzactie;
    }

    public Clienti getClienti() {
        return clienti;
    }

    public void setClienti(Clienti clienti) {
        this.clienti = clienti;
    }

    public Angajati getAngajati() {
        return angajati;
    }

    public void setAngajati(Angajati angajati) {
        this.angajati = angajati;
    }

    public Date getDataTranzactiei() {
        return dataTranzactiei;
    }

    public void setDataTranzactiei(Date dataTranzactiei) {
        this.dataTranzactiei = dataTranzactiei;
    }
}
