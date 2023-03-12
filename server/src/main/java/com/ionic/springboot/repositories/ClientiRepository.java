package com.ionic.springboot.repositories;

import com.ionic.springboot.entities.Angajati;
import com.ionic.springboot.entities.Clienti;
import com.ionic.springboot.entities.Locatii;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

public interface ClientiRepository extends JpaRepository<Clienti, Long> {


    @Query(value="select * from clienti order by data_inscrierii asc",nativeQuery = true)
    public List<Clienti> selecteazaTotiClientii();

    @Query(value="delete from clienti where id_client=:idClient",nativeQuery = true)
    @Modifying
    @Transactional
    public void stergeClient(@Param("idClient") Long idClient);


    @Modifying
    @Transactional
    @Query(value = "update clienti set identificator_client=:identificatorClient," +
            " nume=:nume, prenume=:prenume, " +
            "data_inscrierii=:dataInscrierii where id_client=:idClient", nativeQuery = true)
    public void modificaClient(@Param("identificatorClient")String identificatorClient,
                                @Param("nume")String nume,
                                @Param("prenume")String prenume,
                                @Param("dataInscrierii") Date dataInscrierii,
                                @Param("idClient")Long idClient);

    @Modifying
    @Transactional
    @Query(value = "insert into clienti (identificator_client,id_client" +
            ",nume,prenume,data_inscrierii) values " +
            "(:identificatorClient,:idClient,:nume,:prenume,:dataInscrierii)"
            , nativeQuery = true)
    public void adaugaClient(     @Param("identificatorClient")String identificatorClient,
                                   @Param("idClient")Long idClient,
                                    @Param("nume")String nume,
                                   @Param("prenume")String prenume,
                                   @Param("dataInscrierii") Date dataInscrierii);


    @Query(value = "select max(id_client) from clienti",nativeQuery = true)
    public Long getMaxIdClient();
}