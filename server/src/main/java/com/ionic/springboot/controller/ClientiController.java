package com.ionic.springboot.controller;

import com.ionic.springboot.entities.Angajati;
import com.ionic.springboot.entities.Clienti;
import com.ionic.springboot.repositories.AngajatiRepository;
import com.ionic.springboot.repositories.ClientiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods = { RequestMethod.GET }, allowedHeaders = "*")
public class ClientiController {

    @Autowired
    private ClientiRepository clientiRepository;

    @GetMapping(value = "/clienti/getAll", produces="application/json")
    public List<Clienti> listAll() {
      return clientiRepository.selecteazaTotiClientii();
    }


    @PostMapping(value = "/clienti/adauga", produces="application/json")
    public Clienti adaugaAngajat(@RequestBody Clienti client)
    {
         clientiRepository.adaugaClient(client.getIdentificatorClient(),clientiRepository.getMaxIdClient() +1,
                client.getNume(),client.getPrenume(),client.getDataInscrierii());
        return client;
    }
    @PostMapping(value = "/clienti/sterge", produces="application/json")
    public Boolean stergeClient(@RequestBody Clienti client)
    {
        clientiRepository.stergeClient(client.getIdClient());
        return  true;
    }

    @PostMapping(value = "/clienti/modifica", produces="application/json")
    public Clienti modificaClietn(@RequestBody Clienti client)
    {
        clientiRepository.modificaClient(client.getIdentificatorClient(),
                client.getNume(),client.getPrenume(),client.getDataInscrierii(),client.getIdClient());
        return client;
    }
}
