package br.edu.utfpr.client.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigInteger;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ShipCrewMissionCount {
    private String shipName;
    private Integer shipLevel;
    private BigInteger crewCount;
    private BigInteger missionCount;
}
