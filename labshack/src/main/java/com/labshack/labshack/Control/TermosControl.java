package com.labshack.labshack.Control;

import com.labshack.labshack.Model.Termos;
import com.labshack.labshack.Repository.TermosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/termos")
public class TermosControl {

    @Autowired
    private TermosRepository repository;

    @GetMapping("/listar")
    public ResponseEntity<List<Termos>> list() {
        var termos = repository.findAll();
        return ResponseEntity.ok(termos);
    }
}
