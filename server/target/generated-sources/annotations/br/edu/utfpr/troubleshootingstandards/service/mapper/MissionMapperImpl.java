package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.dto.DepartmentDTO;
import br.edu.utfpr.troubleshootingstandards.dto.MissionDTO;
import br.edu.utfpr.troubleshootingstandards.dto.ResourceDTO;
import br.edu.utfpr.troubleshootingstandards.dto.ResourceTypeDTO;
import br.edu.utfpr.troubleshootingstandards.model.Crew;
import br.edu.utfpr.troubleshootingstandards.model.Department;
import br.edu.utfpr.troubleshootingstandards.model.Mission;
import br.edu.utfpr.troubleshootingstandards.model.Proficiency;
import br.edu.utfpr.troubleshootingstandards.model.Resource;
import br.edu.utfpr.troubleshootingstandards.model.ResourceType;
import br.edu.utfpr.troubleshootingstandards.model.Status;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_372 (Amazon.com Inc.)"
)
@Component
public class MissionMapperImpl implements MissionMapper {

    @Override
    public MissionDTO toMissionDTO(Mission mission) {
        if ( mission == null ) {
            return null;
        }

        MissionDTO missionDTO = new MissionDTO();

        missionDTO.setId( mission.getId() );
        missionDTO.setName( mission.getName() );
        missionDTO.setStartDate( mission.getStartDate() );
        missionDTO.setEndDate( mission.getEndDate() );
        missionDTO.setPlanet( mission.getPlanet() );
        missionDTO.setShip( mission.getShip() );
        if ( mission.getMissionStatus() != null ) {
            missionDTO.setMissionStatus( mission.getMissionStatus().name() );
        }
        missionDTO.setCrews( crewSetToCrewDTOSet( mission.getCrews() ) );
        missionDTO.setResources( resourceSetToResourceDTOSet( mission.getResources() ) );

        return missionDTO;
    }

    @Override
    public Mission toMission(MissionDTO missionDTO) {
        if ( missionDTO == null ) {
            return null;
        }

        Mission mission = new Mission();

        mission.setId( missionDTO.getId() );
        mission.setName( missionDTO.getName() );
        mission.setStartDate( missionDTO.getStartDate() );
        mission.setEndDate( missionDTO.getEndDate() );
        mission.setPlanet( missionDTO.getPlanet() );
        mission.setShip( missionDTO.getShip() );
        if ( missionDTO.getMissionStatus() != null ) {
            mission.setMissionStatus( Enum.valueOf( Status.class, missionDTO.getMissionStatus() ) );
        }
        mission.setCrews( crewDTOSetToCrewSet( missionDTO.getCrews() ) );
        mission.setResources( resourceDTOSetToResourceSet( missionDTO.getResources() ) );

        return mission;
    }

    @Override
    public List<MissionDTO> toMissionDTO(List<Mission> missionList) {
        if ( missionList == null ) {
            return null;
        }

        List<MissionDTO> list = new ArrayList<MissionDTO>( missionList.size() );
        for ( Mission mission : missionList ) {
            list.add( toMissionDTO( mission ) );
        }

        return list;
    }

    @Override
    public List<Mission> toMission(List<MissionDTO> missionDTOList) {
        if ( missionDTOList == null ) {
            return null;
        }

        List<Mission> list = new ArrayList<Mission>( missionDTOList.size() );
        for ( MissionDTO missionDTO : missionDTOList ) {
            list.add( toMission( missionDTO ) );
        }

        return list;
    }

    protected DepartmentDTO departmentToDepartmentDTO(Department department) {
        if ( department == null ) {
            return null;
        }

        DepartmentDTO departmentDTO = new DepartmentDTO();

        departmentDTO.setId( department.getId() );
        if ( department.getName() != null ) {
            departmentDTO.setName( department.getName().name() );
        }

        return departmentDTO;
    }

    protected CrewDTO crewToCrewDTO(Crew crew) {
        if ( crew == null ) {
            return null;
        }

        CrewDTO crewDTO = new CrewDTO();

        crewDTO.setId( crew.getId() );
        crewDTO.setFirstName( crew.getFirstName() );
        crewDTO.setLastName( crew.getLastName() );
        crewDTO.setRank( crew.getRank() );
        crewDTO.setSpecies( crew.getSpecies() );
        crewDTO.setDateBirth( crew.getDateBirth() );
        crewDTO.setDateJoined( crew.getDateJoined() );
        crewDTO.setActiveStatus( crew.getActiveStatus() );
        crewDTO.setDepartment( departmentToDepartmentDTO( crew.getDepartment() ) );

        return crewDTO;
    }

    protected Set<CrewDTO> crewSetToCrewDTOSet(Set<Crew> set) {
        if ( set == null ) {
            return null;
        }

        Set<CrewDTO> set1 = new HashSet<CrewDTO>( Math.max( (int) ( set.size() / .75f ) + 1, 16 ) );
        for ( Crew crew : set ) {
            set1.add( crewToCrewDTO( crew ) );
        }

        return set1;
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

    protected ResourceDTO resourceToResourceDTO(Resource resource) {
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

    protected Set<ResourceDTO> resourceSetToResourceDTOSet(Set<Resource> set) {
        if ( set == null ) {
            return null;
        }

        Set<ResourceDTO> set1 = new HashSet<ResourceDTO>( Math.max( (int) ( set.size() / .75f ) + 1, 16 ) );
        for ( Resource resource : set ) {
            set1.add( resourceToResourceDTO( resource ) );
        }

        return set1;
    }

    protected Department departmentDTOToDepartment(DepartmentDTO departmentDTO) {
        if ( departmentDTO == null ) {
            return null;
        }

        Department department = new Department();

        department.setId( departmentDTO.getId() );
        if ( departmentDTO.getName() != null ) {
            department.setName( Enum.valueOf( Proficiency.class, departmentDTO.getName() ) );
        }

        return department;
    }

    protected Crew crewDTOToCrew(CrewDTO crewDTO) {
        if ( crewDTO == null ) {
            return null;
        }

        Crew crew = new Crew();

        crew.setId( crewDTO.getId() );
        crew.setFirstName( crewDTO.getFirstName() );
        crew.setLastName( crewDTO.getLastName() );
        crew.setRank( crewDTO.getRank() );
        crew.setSpecies( crewDTO.getSpecies() );
        crew.setDateBirth( crewDTO.getDateBirth() );
        crew.setDateJoined( crewDTO.getDateJoined() );
        crew.setActiveStatus( crewDTO.getActiveStatus() );
        crew.setDepartment( departmentDTOToDepartment( crewDTO.getDepartment() ) );

        return crew;
    }

    protected Set<Crew> crewDTOSetToCrewSet(Set<CrewDTO> set) {
        if ( set == null ) {
            return null;
        }

        Set<Crew> set1 = new HashSet<Crew>( Math.max( (int) ( set.size() / .75f ) + 1, 16 ) );
        for ( CrewDTO crewDTO : set ) {
            set1.add( crewDTOToCrew( crewDTO ) );
        }

        return set1;
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

    protected Resource resourceDTOToResource(ResourceDTO resourceDTO) {
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

    protected Set<Resource> resourceDTOSetToResourceSet(Set<ResourceDTO> set) {
        if ( set == null ) {
            return null;
        }

        Set<Resource> set1 = new HashSet<Resource>( Math.max( (int) ( set.size() / .75f ) + 1, 16 ) );
        for ( ResourceDTO resourceDTO : set ) {
            set1.add( resourceDTOToResource( resourceDTO ) );
        }

        return set1;
    }
}
