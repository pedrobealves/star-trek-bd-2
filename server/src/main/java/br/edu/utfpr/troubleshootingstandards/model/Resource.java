package br.edu.utfpr.troubleshootingstandards.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Resource implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String name;

    @ManyToOne
    @NotNull
    private ResourceType type;

    @ManyToMany(fetch=FetchType.LAZY,cascade = CascadeType.ALL,mappedBy = "resources")
    @JsonIgnore
    private Set<Mission> missions;

    @NotNull
    @Column(name = "unit_cost", precision = 10, scale = 2)
    private BigDecimal unitCost;

    @NotNull
    private int quantity;
}
