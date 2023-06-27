package br.edu.utfpr.client.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Ship {

    private Long id;

    @NotNull
    private String name;

    @NotNull
    private Crew captain;

    @NotNull
    private int level;

    @NotNull
    private int maxCrewSize;
}
