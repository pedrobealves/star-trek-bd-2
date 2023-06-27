package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import br.edu.utfpr.troubleshootingstandards.model.Crew;
import br.edu.utfpr.troubleshootingstandards.repository.CrewRepository;
import br.edu.utfpr.troubleshootingstandards.service.mapper.CrewMapper;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@AllArgsConstructor
@Component
public class CrewServiceImpl implements CrewService {

    @Autowired
    private CrewRepository crewRepository;

    @Autowired
    private CrewMapper crewMapper;

    @Override
    public List<CrewDTO> getAllCrew() {
        List<Crew> crewList = crewRepository.findAll();
        return crewList.stream()
                .map(crewMapper::toCrewDTO)
                .collect(Collectors.toList());
    }

    @Override
    public Optional<CrewDTO> getCrewById(Long id) throws EntityNotFoundException {
        Optional<Crew> crewOptional = crewRepository.findById(id);
        return crewOptional.map(crewMapper::toCrewDTO);
    }

    @Override
    public CrewDTO saveCrew(CrewDTO crewDTO) {
        Crew crew = crewMapper.toCrew(crewDTO);
        Crew savedCrew = crewRepository.save(crew);
        return crewMapper.toCrewDTO(savedCrew);
    }

    @Override
    public void deleteCrew(Long id) throws EntityNotFoundException {
        if (!crewRepository.existsById(id)) {
            throw new EntityNotFoundException(Crew.class, "id", id.toString());
        }
        crewRepository.deleteById(id);
    }
}
