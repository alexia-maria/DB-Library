package com.ionic.springboot.repositories;

import com.ionic.springboot.entities.DetaliiTranzactii;
import com.ionic.springboot.entities.Locatii;
import com.ionic.springboot.entities.Tranzactii;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

public interface DetaliiTranzactiiRepository extends JpaRepository<DetaliiTranzactii, Long> {
    @Query(value="select * from detalii_tranzactii",nativeQuery = true)
    public List<DetaliiTranzactii> selecteazaToateDetaliiTranzactii();

    @Query(value="delete from detalii_tranzactii where identificator=:identificator",nativeQuery = true)
    @Modifying
    @Transactional
    public void stergeDetaliiTranzactii(@Param("identificator") Long identificator);


    @Modifying
    @Transactional
    @Query(value = "update detalii_tranzactii set id_tranzactie=:idTranzactie," +
            " id_produs=:idProdus, cantitate=:cantitate, pret=:pret " +
            " where identificator=:identificator", nativeQuery = true)
    public void modificaDetaliiTranzactii(@Param("idTranzactie")Long idTranzactie,
                                   @Param("idProdus")Long idProdus,
                                   @Param("cantitate") Long cantitate,
                                   @Param("pret")Long pret,
                                   @Param("identificator")Long identificator);

    @Modifying
    @Transactional
    @Query(value = "insert into detalii_tranzactii (identificator,id_tranzactie" +
            ",id_produs,cantitate,pret) values " +
            "(:identificator,:idTranzactie,:idProdus,:cantitate,:pret)"
            , nativeQuery = true)
    public void adaugaTetaliiTranzactii(    @Param("identificator")Long identificator,
                                @Param("idTranzactie")Long idTranzactie,
                              @Param("idProdus")Long idProdus,
                              @Param("cantitate") Long cantitate,
                              @Param("pret")Long pret
    );

    @Query(value = "select max(identificator) from detalii_tranzactii",nativeQuery = true)
    public Long getMaxIdDetaliiTranzactii();
}