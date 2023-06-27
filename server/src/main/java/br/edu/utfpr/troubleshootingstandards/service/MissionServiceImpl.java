package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.dto.MissionDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import br.edu.utfpr.troubleshootingstandards.model.Mission;
import br.edu.utfpr.troubleshootingstandards.model.Crew;
import br.edu.utfpr.troubleshootingstandards.repository.MissionCrewRepository;
import br.edu.utfpr.troubleshootingstandards.repository.MissionRepository;
import br.edu.utfpr.troubleshootingstandards.service.mapper.CrewMapper;
import br.edu.utfpr.troubleshootingstandards.service.mapper.MissionMapper;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@AllArgsConstructor
@Component
public class MissionServiceImpl implements MissionService {

    @Autowired
    private MissionRepository missionRepository;

    @Autowired
    private MissionMapper missionMapper;

    @Autowired
    private CrewMapper crewMapper;

    @Autowired
    private MissionCrewRepository missionCrewRepository;

    @Override
    public List<MissionDTO> getAllMissions() {
        List<Mission> missionList = missionRepository.findAll();
        return missionList.stream()
                .map(missionMapper::toMissionDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<CrewDTO> getAllCrews(Long id) {
      Optional<Mission> optionalMission = missionRepository.findById(id);
    if (optionalMission.isPresent()) {
        Mission mission = optionalMission.get();
        return mission.getCrews().stream()
                .sorted(Comparator.comparing(Crew::getRank, Comparator.reverseOrder())
                        .thenComparing(Crew::getDateJoined))
                .map(crewMapper::toCrewDTO)
                .collect(Collectors.toList());
    } else {
        return Collections.emptyList();
    }
    }

    @Override
    public Optional<MissionDTO> getMissionById(Long id) throws EntityNotFoundException {
        Optional<Mission> optionalMission = missionRepository.findById(id);
        return optionalMission.map(missionMapper::toMissionDTO);
    }


    @Override
    public MissionDTO saveMission(MissionDTO missionDTO) {
        Mission mission = missionMapper.toMission(missionDTO);
        Mission savedMission = missionRepository.save(mission);
        return missionMapper.toMissionDTO(savedMission);
    }

    @Override
    public void deleteMission(Long id) throws EntityNotFoundException {
        if (!missionRepository.existsById(id)) {
            throw new EntityNotFoundException(Mission.class, "id", id.toString());
        }
        missionRepository.deleteById(id);
    }

    public void deleteCrewMission(Long crewId, Long missionId) throws EntityNotFoundException {
        if (!missionRepository.existsById(missionId)) {
            throw new EntityNotFoundException(Mission.class, "id", missionId.toString());
        }
        missionCrewRepository.executeCrewMissionOperations(crewId, missionId);
    }
}
