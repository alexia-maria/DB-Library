package com.ionic.springboot.controller;

import com.ionic.springboot.entities.Angajati;
import com.ionic.springboot.entities.DetaliiTranzactii;
import com.ionic.springboot.entities.Furnizori;
import com.ionic.springboot.repositories.AngajatiRepository;
import com.ionic.springboot.repositories.FurnizoriRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET }, allowedHeaders = "*")
public class FurnizoriController {

    @Autowired
    private FurnizoriRepository furnizoriRepository;

    @GetMapping(value = "/furnizori/getAll", produces="application/json")
    public List<Furnizori> listAll() {
      return furnizoriRepository.findAll();
    }


    @PostMapping(value = "/furnizori/adauga", produces="application/json")
    public Furnizori adaugaFurnizori(@RequestBody Furnizori furnizori)
    {
        return furnizoriRepository.save(furnizori);
    }
    @PostMapping(value = "/furnizori/sterge", produces="application/json")
    public Boolean stergeFurnizori(@RequestBody Furnizori furnizori)
    {
        furnizoriRepository.delete(furnizori);
        return  true;
    }

    @GetMapping(value = "/furnizori/selectdinv", produces="application/json")
    public List<String[]> selectDinV() {
        return furnizoriRepository.selectDinVFurnizori();
    }

}
