package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface CrewService {

    List<CrewDTO> getAllCrew();

    Optional<CrewDTO> getCrewById(Long id) throws EntityNotFoundException;

    CrewDTO saveCrew(CrewDTO crewDTO);

    void deleteCrew(Long id) throws EntityNotFoundException;
}
