package com.ionic.springboot.controller;

import com.ionic.springboot.entities.Clienti;
import com.ionic.springboot.entities.Departamente;
import com.ionic.springboot.repositories.DepartamenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET }, allowedHeaders = "*")
public class DepartamenteController {

    @Autowired
    private DepartamenteRepository departamenteRepository;

    @GetMapping(value = "/departamente/getAll", produces="application/json")
    public List<Departamente> listAll() {
      return departamenteRepository.findAll();
    }


    @PostMapping(value = "/departamente/adauga", produces="application/json")
    public Departamente adaugaDepartament(@RequestBody Departamente departamente)
    {
        return departamenteRepository.save(departamente);
    }
    @PostMapping(value = "/departamente/sterge", produces="application/json")
    public Boolean stergeDepartament(@RequestBody Departamente departamente)
    {
        departamenteRepository.delete(departamente);
        return  true;
    }
}
