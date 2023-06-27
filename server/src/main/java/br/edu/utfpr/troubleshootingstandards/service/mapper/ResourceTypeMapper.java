package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.ResourceDTO;
import br.edu.utfpr.troubleshootingstandards.model.Resource;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper
public interface ResourceTypeMapper {
    ResourceDTO toResourceDTO(Resource resource);

    Resource toResource(ResourceDTO resourceDTO);

    List<ResourceDTO> toResourceDTO(List<Resource> resourceList);

    List<Resource> toResource(List<ResourceDTO> resourceDTOList);
}
