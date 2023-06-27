package br.edu.utfpr.troubleshootingstandards.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Planet implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String name;

    @OneToMany(mappedBy = "planet", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonIgnore
    private Set<Mission> missions;

    @Column(name = "planet_type")
    private String planetType;

    @Column(name = "star_system")
    private String starSystem;

    private Integer diameter;

    @Column(name = "orbital_period")
    private Double orbitalPeriod;

    @Column(name = "surface_temp")
    private Integer surfaceTemperature;
}
