package com.labshack.labshack.Control;

import com.labshack.labshack.Model.Termos;
import com.labshack.labshack.Repository.TermosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import java.util.stream.Collectors;

@CrossOrigin("*")
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

    @GetMapping("/listarFiltrado")
    public ResponseEntity<Page<Termos>> listFilter(@RequestParam String termo, Pageable pageable) {
        var termos = repository.findByTermoContaining(termo, pageable);
        return ResponseEntity.ok(termos);
    }
}
