package br.edu.utfpr.client.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MissionReport {
    private Long missionId;
    private String missionName;
    private String startDate;
    private String endDate;
    private String missionStatus;
    private String shipName;
    private String planetName;
    private String captainName;
}
