package com.ionic.springboot.repositories;

import com.ionic.springboot.entities.Clienti;
import com.ionic.springboot.entities.Locatii;
import com.ionic.springboot.entities.Produse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

public interface ProduseRepository extends JpaRepository<Produse, Long> {

    @Query(value="select * from produse order by denumire_produs desc",nativeQuery = true)
    public List<Produse> selecteazaToateProdusele();

    @Query(value="delete from produse where id_produs=:idProdus",nativeQuery = true)
    @Modifying
    @Transactional
    public void stergeProdus(@Param("idProdus") Long idProdus);


    @Modifying
    @Transactional
    @Query(value = "update produse set nume_furnizor=:numeFurnizor," +
            " pret_produs=:pretProdus, denumire_produs=:denumireProdus, " +
            "tip_produs=:tipProdus where id_produs=:idProdus", nativeQuery = true)
    public void modificaProdus(@Param("numeFurnizor")String numeFurnizor,
                               @Param("pretProdus")Long pretProdus,
                               @Param("denumireProdus")String denumireProdus,
                               @Param("tipProdus") String tipProdus,
                               @Param("idProdus")Long idProdus);

    @Modifying
    @Transactional
    @Query(value = "insert into produse (id_produs,nume_furnizor" +
            ",pret_produs,denumire_produs,tip_produs) values " +
            "(:idProdus,:numeFurnizor,:pretProdus,:denumireProdus,:tipProdus)"
            , nativeQuery = true)
    public void adaugaProdus(    @Param("idProdus")Long idProdus,
                                 @Param("numeFurnizor")String numeFurnizor,
                                  @Param("pretProdus")Long pretProdus,
                                  @Param("denumireProdus")String denumireProdus,
                                  @Param("tipProdus") String tipProdus
                                  );


    @Query(value = "select max(id_produs) from produse",nativeQuery = true)
    public Long getMaxIdProdus();
}