package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.MissionDTO;
import br.edu.utfpr.troubleshootingstandards.model.Mission;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper
public interface MissionMapper {

    MissionDTO toMissionDTO(Mission mission);

    Mission toMission(MissionDTO missionDTO);

    List<MissionDTO> toMissionDTO(List<Mission> missionList);

    List<Mission> toMission(List<MissionDTO> missionDTOList);
}
