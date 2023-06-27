package br.edu.utfpr.troubleshootingstandards.model;

import com.fasterxml.jackson.annotation.*;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import javax.validation.constraints.Min;
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
public class Crew implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name")
    @NotNull
    private String firstName;

    @NotNull
    @Column(name = "last_name")
    private String lastName;

    @NotNull
    @Min(1)
    private int rank;

    private String species;

    @Column(name = "date_birth")
    private LocalDate dateBirth;

    @CreatedDate
    @Column(name = "date_joined")
    private LocalDate dateJoined;

    @Column(name = "active_status")
    @NotNull
    private Boolean activeStatus;

    @ManyToOne
    @NotNull
    private Department department;

    @ManyToMany(fetch=FetchType.LAZY,cascade = CascadeType.ALL,mappedBy = "crews")
    @JsonIgnore
    private Set<Mission> missions;
}
