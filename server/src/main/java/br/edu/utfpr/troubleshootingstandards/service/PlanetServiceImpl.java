package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.PlanetDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import br.edu.utfpr.troubleshootingstandards.model.Planet;
import br.edu.utfpr.troubleshootingstandards.repository.PlanetRepository;
import br.edu.utfpr.troubleshootingstandards.service.mapper.PlanetMapper;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@AllArgsConstructor
@Component
public class PlanetServiceImpl implements PlanetService {

    @Autowired
    private PlanetRepository planetRepository;

    @Autowired
    private PlanetMapper planetMapper;

    @Override
    public List<PlanetDTO> getAllPlanets() {
        List<Planet> planetList = planetRepository.findAll();
        return planetList.stream()
                .map(planetMapper::toPlanetDTO)
                .collect(Collectors.toList());
    }

    @Override
    public Optional<PlanetDTO> getPlanetById(Long id) throws EntityNotFoundException {
        Optional<Planet> optionalPlanet = planetRepository.findById(id);
        return optionalPlanet.map(planetMapper::toPlanetDTO);
    }

    @Override
    public PlanetDTO savePlanet(PlanetDTO planetDTO) {
        Planet planet = planetMapper.toPlanet(planetDTO);
        Planet savedPlanet = planetRepository.save(planet);
        return planetMapper.toPlanetDTO(savedPlanet);
    }

    @Override
    public void deletePlanet(Long id) throws EntityNotFoundException {
        if (!planetRepository.existsById(id)) {
            throw new EntityNotFoundException(Planet.class, "id", id.toString());
        }
        planetRepository.deleteById(id);
    }
}
