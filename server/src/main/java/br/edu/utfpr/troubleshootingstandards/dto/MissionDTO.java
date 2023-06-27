package br.edu.utfpr.troubleshootingstandards.dto;

import br.edu.utfpr.troubleshootingstandards.model.Planet;
import br.edu.utfpr.troubleshootingstandards.model.Ship;
import br.edu.utfpr.troubleshootingstandards.model.Status;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MissionDTO {

    private Long id;

    private String name;

    private LocalDate startDate;

    private LocalDate endDate;

    private Planet planet;

    @NotNull
    private Ship ship;

    @NotNull
    private String missionStatus;

    private Set<CrewDTO> crews;

    private Set<ResourceDTO> resources;
}
