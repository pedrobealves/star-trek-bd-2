package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.ResourceDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface ResourceService {

    List<ResourceDTO> getAllResources();

    Optional<ResourceDTO> getResourceById(Long id) throws EntityNotFoundException;

    ResourceDTO saveResource(ResourceDTO resourceDTO);

    void deleteResource(Long id) throws EntityNotFoundException;
}
