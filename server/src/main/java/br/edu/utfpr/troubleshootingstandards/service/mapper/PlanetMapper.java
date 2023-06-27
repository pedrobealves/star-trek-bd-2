package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.PlanetDTO;
import br.edu.utfpr.troubleshootingstandards.model.Planet;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper
public interface PlanetMapper {

    PlanetDTO toPlanetDTO(Planet planet);

    Planet toPlanet(PlanetDTO planetDTO);

    List<PlanetDTO> toPlanetDTO(List<Planet> planetList);

    List<Planet> toPlanet(List<PlanetDTO> planetDTOList);
}
