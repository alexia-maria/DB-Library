package com.ionic.springboot.controller;

import com.ionic.springboot.entities.Angajati;
import com.ionic.springboot.entities.Produse;
import com.ionic.springboot.entities.Tranzactii;
import com.ionic.springboot.repositories.AngajatiRepository;
import com.ionic.springboot.repositories.TranzactiiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET }, allowedHeaders = "*")
public class TranzactiiController {

    @Autowired
    private TranzactiiRepository tranzactiiRepository;

    @GetMapping(value = "/tranzactii/getAll", produces="application/json")
    public List<Tranzactii> listAll() {
      return tranzactiiRepository.selecteazaToateTranzactiile();
    }

    @PostMapping(value = "/tranzactii/adauga", produces="application/json")
    public Tranzactii adaugaTranzactii(@RequestBody Tranzactii tranzactii)
    {
         tranzactiiRepository.adaugaTranzactie(tranzactiiRepository.getMaxIdTranzactie() +1,
                tranzactii.getClienti().getIdClient(),tranzactii.getAngajati().getIdAngajat(),
                tranzactii.getDataTranzactiei());
         return tranzactii;
    }

    @PostMapping(value = "/tranzactii/modifica", produces="application/json")
    public Tranzactii modificaTranzactii(@RequestBody Tranzactii tranzactii)
    {
        tranzactiiRepository.modificaTranzactie(
                tranzactii.getClienti().getIdClient(),tranzactii.getAngajati().getIdAngajat(),
                tranzactii.getDataTranzactiei(), tranzactii.getIdTranzactie());
        return tranzactii;
    }
    @PostMapping(value = "/tranzactii/sterge", produces="application/json")
    public Boolean stergeTranzactii(@RequestBody Tranzactii tranzactii)
    {
        tranzactiiRepository.stergeTranzactie(tranzactii.getIdTranzactie());
        return  true;
    }

    @GetMapping(value = "/tranzactii/selectdinv", produces="application/json")
    public List<String[]> selectDinVTranzactii() {
        return tranzactiiRepository.selectDinVTranzactii();
    }
}
