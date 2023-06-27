package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.PlanetDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface PlanetService {

    List<PlanetDTO> getAllPlanets();

    Optional<PlanetDTO> getPlanetById(Long id) throws EntityNotFoundException;

    PlanetDTO savePlanet(PlanetDTO planetDTO);

    void deletePlanet(Long id) throws EntityNotFoundException;
}
