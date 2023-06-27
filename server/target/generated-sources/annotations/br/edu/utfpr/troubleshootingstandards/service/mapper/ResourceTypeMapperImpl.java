package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.ResourceDTO;
import br.edu.utfpr.troubleshootingstandards.dto.ResourceTypeDTO;
import br.edu.utfpr.troubleshootingstandards.model.Resource;
import br.edu.utfpr.troubleshootingstandards.model.ResourceType;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_372 (Amazon.com Inc.)"
)
@Component
public class ResourceTypeMapperImpl implements ResourceTypeMapper {

    @Override
    public ResourceDTO toResourceDTO(Resource resource) {
        if ( resource == null ) {
            return null;
        }

        ResourceDTO resourceDTO = new ResourceDTO();

        resourceDTO.setId( resource.getId() );
        resourceDTO.setName( resource.getName() );
        resourceDTO.setType( resourceTypeToResourceTypeDTO( resource.getType() ) );
        resourceDTO.setUnitCost( resource.getUnitCost() );
        resourceDTO.setQuantity( resource.getQuantity() );

        return resourceDTO;
    }

    @Override
    public Resource toResource(ResourceDTO resourceDTO) {
        if ( resourceDTO == null ) {
            return null;
        }

        Resource resource = new Resource();

        resource.setId( resourceDTO.getId() );
        resource.setName( resourceDTO.getName() );
        resource.setType( resourceTypeDTOToResourceType( resourceDTO.getType() ) );
        resource.setUnitCost( resourceDTO.getUnitCost() );
        resource.setQuantity( resourceDTO.getQuantity() );

        return resource;
    }

    @Override
    public List<ResourceDTO> toResourceDTO(List<Resource> resourceList) {
        if ( resourceList == null ) {
            return null;
        }

        List<ResourceDTO> list = new ArrayList<ResourceDTO>( resourceList.size() );
        for ( Resource resource : resourceList ) {
            list.add( toResourceDTO( resource ) );
        }

        return list;
    }

    @Override
    public List<Resource> toResource(List<ResourceDTO> resourceDTOList) {
        if ( resourceDTOList == null ) {
            return null;
        }

        List<Resource> list = new ArrayList<Resource>( resourceDTOList.size() );
        for ( ResourceDTO resourceDTO : resourceDTOList ) {
            list.add( toResource( resourceDTO ) );
        }

        return list;
    }

    protected ResourceTypeDTO resourceTypeToResourceTypeDTO(ResourceType resourceType) {
        if ( resourceType == null ) {
            return null;
        }

        ResourceTypeDTO resourceTypeDTO = new ResourceTypeDTO();

        resourceTypeDTO.setId( resourceType.getId() );
        resourceTypeDTO.setName( resourceType.getName() );

        return resourceTypeDTO;
    }

    protected ResourceType resourceTypeDTOToResourceType(ResourceTypeDTO resourceTypeDTO) {
        if ( resourceTypeDTO == null ) {
            return null;
        }

        ResourceType resourceType = new ResourceType();

        resourceType.setId( resourceTypeDTO.getId() );
        resourceType.setName( resourceTypeDTO.getName() );

        return resourceType;
    }
}
