package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.ResourceDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import br.edu.utfpr.troubleshootingstandards.model.Resource;
import br.edu.utfpr.troubleshootingstandards.repository.ResourceRepository;
import br.edu.utfpr.troubleshootingstandards.service.mapper.ResourceMapper;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@AllArgsConstructor
@Component
public class ResourceServiceImpl implements ResourceService {

    @Autowired
    private ResourceRepository resourceRepository;

    @Autowired
    private ResourceMapper resourceMapper;

    @Override
    public List<ResourceDTO> getAllResources() {
        List<Resource> resourceList = resourceRepository.findAll();
        return resourceList.stream()
                .map(resourceMapper::toResourceDTO)
                .collect(Collectors.toList());
    }

    @Override
    public Optional<ResourceDTO> getResourceById(Long id) throws EntityNotFoundException {
        Optional<Resource> optionalResource = resourceRepository.findById(id);
        return optionalResource.map(resourceMapper::toResourceDTO);
    }

    @Override
    public ResourceDTO saveResource(ResourceDTO resourceDTO) {
        Resource resource = resourceMapper.toResource(resourceDTO);
        Resource savedResource = resourceRepository.save(resource);
        return resourceMapper.toResourceDTO(savedResource);
    }

    @Override
    public void deleteResource(Long id) throws EntityNotFoundException {
        if (!resourceRepository.existsById(id)) {
            throw new EntityNotFoundException(Resource.class, "id", id.toString());
        }
        resourceRepository.deleteById(id);
    }
}
