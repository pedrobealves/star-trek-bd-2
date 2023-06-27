package br.edu.utfpr.client.model;


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
public class Mission {

    private Long id;

    private String name;

    private LocalDate startDate;

    private LocalDate endDate;

    private Planet planet;

    @NotNull
    private Ship ship;

    @NotNull
    private String missionStatus;

    private Set<Crew> crews;

    private Set<Resource> resources;
}
