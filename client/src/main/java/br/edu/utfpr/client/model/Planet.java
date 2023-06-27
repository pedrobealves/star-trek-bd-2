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
public class Planet {

    private Long id;

    @NotNull
    private String name;

    private String planetType;

    private String starSystem;

    private Integer diameter;

    private Double orbitalPeriod;

    private Integer surfaceTemperature;
}
