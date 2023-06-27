package br.edu.utfpr.troubleshootingstandards.dto;

import br.edu.utfpr.troubleshootingstandards.model.Mission;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PlanetDTO {

    private Long id;

    @NotNull
    private String name;

    private String planetType;

    private String starSystem;

    private Integer diameter;

    private Double orbitalPeriod;

    private Integer surfaceTemperature;
}
