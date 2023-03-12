package com.ionic.springboot.repositories;

import com.ionic.springboot.entities.Angajati;
import com.ionic.springboot.entities.Locatii;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

public interface AngajatiRepository extends JpaRepository<Angajati, Long> {

    @Query(value="select * from angajati",nativeQuery = true)
    public List<Angajati> selecteazaTotiAngajatii();

    @Query(value="delete from angajati where id_angajat=:idAngajat",nativeQuery = true)
    @Modifying
    @Transactional
    public void stergeAngajat(@Param("idAngajat") Long idAngajat);


    @Modifying
    @Transactional
    @Query(value = "update angajati set id_locatie=:idLocatie, numar_departament=:numarDepartament" +
            ", functie=:functie, nume=:nume, prenume=:prenume, salariu=:salariu, " +
            "data_angajarii=:dataAngajarii where id_angajat=:idAngajat", nativeQuery = true)
    public void modificaAngajat(@Param("idLocatie")Long idLocatie,
                                @Param("numarDepartament")Long numarDepartament,
                                @Param("functie")String functie,
                                @Param("nume")String nume,
                                @Param("prenume")String prenume,
                                @Param("salariu")Long salariu, @Param("dataAngajarii")Date dataAngajarii,
                                @Param("idAngajat")Long idAngajat);

    @Modifying
    @Transactional
    @Query(value = "insert into angajati (id_angajat,id_locatie,numar_departament," +
            "functie,nume,prenume,salariu,data_angajarii) values " +
            "(:idAngajat,:idLocatie,:numarDepartament,:functie,:nume,:prenume,:salariu,:dataAngajarii)"
            , nativeQuery = true)
    public void adaugaAngajat(     @Param("idAngajat")Long idAngajat,
                                   @Param("idLocatie")Long idLocatie,
                                @Param("numarDepartament")Long numarDepartament,
                                @Param("functie")String functie,
                                @Param("nume")String nume,
                                @Param("prenume")String prenume,
                                @Param("salariu")Long salariu, @Param("dataAngajarii")Date dataAngajarii);


    @Query(value = "select max(id_angajat) from angajati",nativeQuery = true)
    public Long getMaxIdAngajat();


    @Query(value="select  " +
            "ang.id_angajat, ang.nume as Nume_Angajat, ang.prenume as Prenume_Angajat, " +
            "tra.id_tranzactie, tra.id_client, tra.data_tranzactiei, " +
            "sum(det.pret*det.cantitate) as Total, cli.prenume as Prenume_Client, " +
            "prod.denumire_produs,prod.tip_produs from tranzactii tra " +
            "inner join angajati ang on ang.id_angajat = tra.id_angajat " +
            "inner join detalii_tranzactii det ON tra.id_tranzactie = det.id_tranzactie " +
            "inner join produse prod on det.id_produs = prod.id_produs " +
            "left join clienti cli on tra.id_client = cli.id_client " +
            "where to_char(data_tranzactiei,'MON') = 'DEC' and lower(substr(tip_produs,1,5)) = 'carte' " +
            "group by tra.id_tranzactie, tra.id_client, tra.data_tranzactiei,cli.nume,cli.prenume, " +
            "ang.nume,ang.prenume,ang.id_angajat, prod.denumire_produs, " +
            "prod.tip_produs order by data_tranzactiei desc",nativeQuery = true)
    public List<String[]>getQueryPctC();


    @Query(value="select count(ang.id_angajat) as Numar_Tranzactii,ang.nume,ang.prenume,ang.salariu, " +
            "ang.functie,ang.data_angajarii " +
            "from angajati ang " +
            "inner join tranzactii tra on " +
            "tra.id_angajat = ang.id_angajat " +
            "group by ang.nume,ang.prenume,ang.salariu,ang.functie,ang.data_angajarii " +
            "having count(ang.id_angajat) >= 2",nativeQuery = true)
    public List<String[]>getQueryPctD();


}