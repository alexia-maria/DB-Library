package com.ionic.springboot.controller;

import com.ionic.springboot.entities.Angajati;
import com.ionic.springboot.repositories.AngajatiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET }, allowedHeaders = "*")
public class AngajatiController {

    @Autowired
    private AngajatiRepository angajatiRepository;

    @PostMapping(value = "/angajati/adauga", produces="application/json")
    public Angajati adaugaAngajat(@RequestBody Angajati angajati)
    {
        System.out.println(angajati.getLocatie().toString());
         angajatiRepository.adaugaAngajat(angajatiRepository.getMaxIdAngajat() +1,
                angajati.getLocatie().getIdLocatie(),angajati.getDepartament().getNumarDepartament(),
                angajati.getFunctie(),angajati.getNume(),angajati.getPrenume(),
                angajati.getSalariu(),angajati.getDataAngajarii());
        return angajati;
    }
    @PostMapping(value = "/angajati/sterge", produces="application/json")
    public Boolean stergeAngajat(@RequestBody Angajati angajati)
    {
        System.out.println(angajati.getNume());
        angajatiRepository.stergeAngajat(angajati.getIdAngajat());
        return  true;
    }
    @GetMapping(value = "/angajati/getAll", produces="application/json")
    public List<Angajati> listAll() {
        return angajatiRepository.selecteazaTotiAngajatii();
    }

    @GetMapping(value = "/angajati/querypctd", produces="application/json")
    public List<String[]> getQueryPctD() {
        return angajatiRepository.getQueryPctD();
    }

    @GetMapping(value = "/angajati/querypctc", produces="application/json")
    public List<String[]> getQueryPctC() {
        return angajatiRepository.getQueryPctC();
    }


    @PostMapping(value = "/angajati/modifica", produces="application/json")
    public Angajati actualizeazaAngajat(@RequestBody Angajati angajati)
    {
        System.out.println(angajati.getLocatie().getIdLocatie());
        System.out.println(angajati.getDepartament().getNumarDepartament());
        System.out.println( angajati.getFunctie());
        System.out.println(angajati.getNume());
        System.out.println(angajati.getPrenume());
        System.out.println( angajati.getSalariu());
        System.out.println(angajati.getDataAngajarii());
        System.out.println(angajati.getIdAngajat());

        angajatiRepository.modificaAngajat(
                angajati.getLocatie().getIdLocatie(),angajati.getDepartament().getNumarDepartament(),
                angajati.getFunctie(),angajati.getNume(),angajati.getPrenume(),
                angajati.getSalariu(),angajati.getDataAngajarii(),angajati.getIdAngajat());
        return angajati;
    }
}
