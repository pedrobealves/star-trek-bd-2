package br.edu.utfpr.troubleshootingstandards.dto;

import lombok.*;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ResourceDTO {

    private Long id;

    @NotNull
    private String name;

    private ResourceTypeDTO type;

    @NotNull
    private BigDecimal unitCost;

    @NotNull
    private int quantity;
}
