package br.edu.utfpr.troubleshootingstandards.dto;

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
public class ShipDTO {

    private Long id;

    @NotNull
    private String name;

    @NotNull
    private CrewDTO captain;

    @NotNull
    private int level;

    @NotNull
    private int maxCrewSize;
}
