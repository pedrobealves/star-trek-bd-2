package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.model.Crew;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper
public interface CrewMapper {

    CrewDTO toCrewDTO(Crew crew);

    Crew toCrew(CrewDTO crewDTO);

    List<CrewDTO> toCrewDTO(List<Crew> crewList);

    List<Crew> toCrew(List<CrewDTO> crewDTOList);
}
