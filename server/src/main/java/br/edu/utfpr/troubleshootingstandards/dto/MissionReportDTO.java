package br.edu.utfpr.troubleshootingstandards.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MissionReportDTO {
    private Long missionId;
    private String missionName;
    private LocalDate startDate;
    private LocalDate endDate;
    private String missionStatus;
    private String shipName;
    private String planetName;
    private String captainName;
}
