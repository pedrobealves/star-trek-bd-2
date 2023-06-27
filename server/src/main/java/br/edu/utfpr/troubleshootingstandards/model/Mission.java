package br.edu.utfpr.troubleshootingstandards.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Getter
@Setter
public class Mission implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @Column(name = "start_date")
    private LocalDate startDate;

    @Column(name = "end_date")
    private LocalDate endDate;

    @ManyToOne
    private Planet planet;

    @ManyToOne
    @NotNull
    private Ship ship;

    @NotNull
    @Enumerated(EnumType.STRING)
    @Column(name = "mission_status")
    private Status missionStatus;

    @ManyToMany(fetch=FetchType.LAZY,cascade = CascadeType.ALL)
    @JoinTable(name = "crew_mission",
            joinColumns = { @JoinColumn(name = "mission_id") },
            inverseJoinColumns = { @JoinColumn(name = "crew_id")})
    private Set<Crew> crews;

    @ManyToMany
    @JoinTable(name = "resource_mission",
            joinColumns = { @JoinColumn(name = "mission_id") },
            inverseJoinColumns = { @JoinColumn(name = "resource_id")})
    private Set<Resource> resources;
}
