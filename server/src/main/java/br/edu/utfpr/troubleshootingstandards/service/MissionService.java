package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.dto.MissionDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface MissionService {

    List<MissionDTO> getAllMissions();

    Optional<MissionDTO> getMissionById(Long id) throws EntityNotFoundException;

    MissionDTO saveMission(MissionDTO missionDTO);

    void deleteMission(Long id) throws EntityNotFoundException;

    void deleteCrewMission(Long crewId, Long missionId) throws EntityNotFoundException;

    public List<CrewDTO> getAllCrews(Long id);
}
