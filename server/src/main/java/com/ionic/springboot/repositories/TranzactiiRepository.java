package com.ionic.springboot.repositories;

import com.ionic.springboot.entities.Locatii;
import com.ionic.springboot.entities.Produse;
import com.ionic.springboot.entities.Tranzactii;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

public interface TranzactiiRepository extends JpaRepository<Tranzactii, Long> {
    @Query(value="select * from V_TRANZACTII",nativeQuery = true)
    public List<String[]> selectDinVTranzactii();


    @Query(value="select * from tranzactii order by data_tranzactiei asc",nativeQuery = true)
    public List<Tranzactii> selecteazaToateTranzactiile();

    @Query(value="delete from tranzactii where id_tranzactie=:idTranzactie",nativeQuery = true)
    @Modifying
    @Transactional
    public void stergeTranzactie(@Param("idTranzactie") Long idTranzactie);


    @Modifying
    @Transactional
    @Query(value = "update tranzactii set id_client=:idClient," +
            " id_angajat=:idAngajat, data_tranzactiei=:dataTranzactiei " +
            " where id_tranzactie=:idTranzactie", nativeQuery = true)
    public void modificaTranzactie(@Param("idClient")Long idClient,
                               @Param("idAngajat")Long idAngajat,
                               @Param("dataTranzactiei") Date dataTranzactiei,
                               @Param("idTranzactie")Long idTranzactie);

    @Modifying
    @Transactional
    @Query(value = "insert into tranzactii (id_tranzactie,id_client" +
            ",id_angajat,data_tranzactiei) values " +
            "(:idTranzactie,:idClient,:idAngajat,:dataTranzactiei)"
            , nativeQuery = true)
    public void adaugaTranzactie(   @Param("idTranzactie")Long idTranzactie,
                                @Param("idClient")Long idClient,
                             @Param("idAngajat")Long idAngajat,
                             @Param("dataTranzactiei") Date dataTranzactiei
                          );

    @Query(value = "select max(id_tranzactie) from tranzactii",nativeQuery = true)
    public Long getMaxIdTranzactie();
}