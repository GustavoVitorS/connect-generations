package com.labshack.labshack.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity(name = "termos")
@Table(name = "termos")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Termos {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idTermo")
    private Integer idTermo;

    @Column(name = "termo", nullable = false)
    private String termo;

    @Column(name = "significado", nullable = false)
    private String significado;

    @Column(name = "tag", nullable = false)
    private String tag;
}
