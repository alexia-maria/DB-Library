package com.ionic.springboot.controller;

import com.ionic.springboot.entities.Angajati;
import com.ionic.springboot.entities.Departamente;
import com.ionic.springboot.entities.DetaliiTranzactii;
import com.ionic.springboot.repositories.AngajatiRepository;
import com.ionic.springboot.repositories.DetaliiTranzactiiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET }, allowedHeaders = "*")
public class DetaliiTranzactiiController {

    @Autowired
    private DetaliiTranzactiiRepository detaliiTranzactiiRepository;

    @GetMapping(value = "/detaliiTranzactii/getAll", produces="application/json")
    public List<DetaliiTranzactii> listAll() {
      return detaliiTranzactiiRepository.selecteazaToateDetaliiTranzactii();
    }

    @PostMapping(value = "/detaliiTranzactii/adauga", produces="application/json")
    public DetaliiTranzactii adaigaDetaliiTranzactii(@RequestBody DetaliiTranzactii detaliiTranzactii)
    {
         detaliiTranzactiiRepository.adaugaTetaliiTranzactii(detaliiTranzactiiRepository.getMaxIdDetaliiTranzactii() +1,
                detaliiTranzactii.getTranzactii().getIdTranzactie(),detaliiTranzactii.getProduse().getIdProdus(),
                detaliiTranzactii.getCantitate(),detaliiTranzactii.getPret());
         return detaliiTranzactii;
    }

    @PostMapping(value = "/detaliiTranzactii/modifica", produces="application/json")
    public DetaliiTranzactii modificaDetaliiTranzactii(@RequestBody DetaliiTranzactii detaliiTranzactii)
    {
        detaliiTranzactiiRepository.modificaDetaliiTranzactii(
                detaliiTranzactii.getTranzactii().getIdTranzactie(),detaliiTranzactii.getProduse().getIdProdus(),
                detaliiTranzactii.getCantitate(),detaliiTranzactii.getPret(),detaliiTranzactii.getIdentificatior());
        return detaliiTranzactii;
    }
    @PostMapping(value = "/detaliiTranzactii/sterge", produces="application/json")
    public Boolean stergeDetaliiTranzactii(@RequestBody DetaliiTranzactii detaliiTranzactii)
    {
        detaliiTranzactiiRepository.stergeDetaliiTranzactii(detaliiTranzactii.getIdentificatior());
        return  true;
    }
}
