package com.labshack.labshack.Repository;

import com.labshack.labshack.Model.Termos;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TermosRepository extends JpaRepository<Termos, Integer> {
    Page<Termos> findByTermoContaining(String title, Pageable pageable);
}
