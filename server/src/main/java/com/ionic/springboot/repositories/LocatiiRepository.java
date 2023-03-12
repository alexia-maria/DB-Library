package com.ionic.springboot.repositories;

import com.ionic.springboot.entities.Locatii;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LocatiiRepository extends JpaRepository<Locatii, Long> {

}