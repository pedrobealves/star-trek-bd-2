package br.edu.utfpr.client.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Resource {

    private Long id;

    @NotNull
    private String name;

    private ResourceType type;

    private Set<Mission> mission;

    @NotNull
    private BigDecimal unitCost;

    @NotNull
    private int quantity;
}
