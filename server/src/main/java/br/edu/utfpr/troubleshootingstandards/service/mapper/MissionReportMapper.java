package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.MissionReportDTO;
import br.edu.utfpr.troubleshootingstandards.model.MissionReport;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper
public interface MissionReportMapper {

    MissionReportDTO toMissionReportDTO(MissionReport missionReport);

    MissionReport toMissionReport(MissionReportDTO missionReportDTO);

    List<MissionReportDTO> toMissionReportDTO(List<MissionReport> missionReportList);

    List<MissionReport> toMissionReport(List<MissionReportDTO> missionReportDTOList);
}
