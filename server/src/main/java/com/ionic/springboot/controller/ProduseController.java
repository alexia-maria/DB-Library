package com.ionic.springboot.controller;

import com.ionic.springboot.entities.Angajati;
import com.ionic.springboot.entities.Locatii;
import com.ionic.springboot.entities.Produse;
import com.ionic.springboot.repositories.AngajatiRepository;
import com.ionic.springboot.repositories.ProduseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET }, allowedHeaders = "*")
public class ProduseController {

    @Autowired
    private ProduseRepository produseRepository;

    @GetMapping(value = "/produse/getAll", produces="application/json")
    public List<Produse> listAll() {
      return produseRepository.selecteazaToateProdusele();
    }

    @PostMapping(value = "/produse/adauga", produces="application/json")
    public Produse adaugaProduse(@RequestBody Produse produse)
    {
         produseRepository.adaugaProdus(produseRepository.getMaxIdProdus() + 1,
                produse.getFurnizori().getNumeFurnizor(),produse.getPret(),produse.getDenumireProdus(),produse.getTipProdus());
         return produse;
    }

    @PostMapping(value = "/produse/modifica", produces="application/json")
    public Produse modificaProdus(@RequestBody Produse produse)
    {
        produseRepository.modificaProdus(
                produse.getFurnizori().getNumeFurnizor(),produse.getPret(),
                produse.getDenumireProdus(),produse.getTipProdus(),produse.getIdProdus());
        return produse;
    }
    @PostMapping(value = "/produse/sterge", produces="application/json")
    public Boolean stergeProduse(@RequestBody Produse produse)
    {
        produseRepository.stergeProdus(produse.getIdProdus());
        return  true;
    }
}
