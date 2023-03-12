package com.ionic.springboot.repositories;

import com.ionic.springboot.entities.Angajati;
import com.ionic.springboot.entities.Furnizori;
import com.ionic.springboot.entities.Locatii;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface FurnizoriRepository extends JpaRepository<Furnizori, String> {

    @Query(value="select * from V_FURNIZORI",nativeQuery = true)
    public List<String[]> selectDinVFurnizori();
}