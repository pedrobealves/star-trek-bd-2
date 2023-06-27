package br.edu.utfpr.troubleshootingstandards.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Ship implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String name;

    @OneToMany(mappedBy = "ship")
    @JsonIgnore
    private Set<Mission> missions;

    @NotNull
    @OneToOne
    private Crew captain;

    @NotNull
    private int level;

    @Column(name = "max_crew_size")
    @NotNull
    private int maxCrewSize;
}
