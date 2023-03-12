package com.ionic.springboot.repositories;

import com.ionic.springboot.entities.Departamente;
import com.ionic.springboot.entities.Locatii;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartamenteRepository extends JpaRepository<Departamente, Long> {

}