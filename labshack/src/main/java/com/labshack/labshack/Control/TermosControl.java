package com.labshack.labshack.Control;

import com.labshack.labshack.Model.Termos;
import com.labshack.labshack.Repository.TermosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
    public ResponseEntity<Page<Termos>> list(Pageable pageable) {
        var termos = repository.findAll(pageable);
        return ResponseEntity.ok(termos);
    }
}
