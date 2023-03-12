package com.ionic.springboot.controller;

import com.ionic.springboot.entities.Furnizori;
import com.ionic.springboot.entities.Locatii;
import com.ionic.springboot.repositories.LocatiiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET }, allowedHeaders = "*")
public class LocatiiController {

    @Autowired
    private LocatiiRepository locatiiRepository;

    @GetMapping(value = "/locatii/getAll", produces="application/json")
    public List<Locatii> listAll() {
      List<Locatii> locatii = locatiiRepository.findAll();
      return locatii;
    }

    @PostMapping(value = "/locatii/adauga", produces="application/json")
    public Locatii adaugaLocatii(@RequestBody Locatii locatii)
    {
        return locatiiRepository.save(locatii);
    }
    @PostMapping(value = "/locatii/sterge", produces="application/json")
    public Boolean stergeLocatii(@RequestBody Locatii locatii)
    {
        locatiiRepository.delete(locatii);
        return  true;
    }
}
