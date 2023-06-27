package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.PlanetDTO;
import br.edu.utfpr.troubleshootingstandards.model.Planet;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_372 (Amazon.com Inc.)"
)
@Component
public class PlanetMapperImpl implements PlanetMapper {

    @Override
    public PlanetDTO toPlanetDTO(Planet planet) {
        if ( planet == null ) {
            return null;
        }

        PlanetDTO planetDTO = new PlanetDTO();

        planetDTO.setId( planet.getId() );
        planetDTO.setName( planet.getName() );
        planetDTO.setPlanetType( planet.getPlanetType() );
        planetDTO.setStarSystem( planet.getStarSystem() );
        planetDTO.setDiameter( planet.getDiameter() );
        planetDTO.setOrbitalPeriod( planet.getOrbitalPeriod() );
        planetDTO.setSurfaceTemperature( planet.getSurfaceTemperature() );

        return planetDTO;
    }

    @Override
    public Planet toPlanet(PlanetDTO planetDTO) {
        if ( planetDTO == null ) {
            return null;
        }

        Planet planet = new Planet();

        planet.setId( planetDTO.getId() );
        planet.setName( planetDTO.getName() );
        planet.setPlanetType( planetDTO.getPlanetType() );
        planet.setStarSystem( planetDTO.getStarSystem() );
        planet.setDiameter( planetDTO.getDiameter() );
        planet.setOrbitalPeriod( planetDTO.getOrbitalPeriod() );
        planet.setSurfaceTemperature( planetDTO.getSurfaceTemperature() );

        return planet;
    }

    @Override
    public List<PlanetDTO> toPlanetDTO(List<Planet> planetList) {
        if ( planetList == null ) {
            return null;
        }

        List<PlanetDTO> list = new ArrayList<PlanetDTO>( planetList.size() );
        for ( Planet planet : planetList ) {
            list.add( toPlanetDTO( planet ) );
        }

        return list;
    }

    @Override
    public List<Planet> toPlanet(List<PlanetDTO> planetDTOList) {
        if ( planetDTOList == null ) {
            return null;
        }

        List<Planet> list = new ArrayList<Planet>( planetDTOList.size() );
        for ( PlanetDTO planetDTO : planetDTOList ) {
            list.add( toPlanet( planetDTO ) );
        }

        return list;
    }
}
