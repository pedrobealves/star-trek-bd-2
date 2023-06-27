package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.dto.DepartmentDTO;
import br.edu.utfpr.troubleshootingstandards.model.Crew;
import br.edu.utfpr.troubleshootingstandards.model.Department;
import br.edu.utfpr.troubleshootingstandards.model.Proficiency;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_372 (Amazon.com Inc.)"
)
@Component
public class CrewMapperImpl implements CrewMapper {

    @Override
    public CrewDTO toCrewDTO(Crew crew) {
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

    @Override
    public Crew toCrew(CrewDTO crewDTO) {
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

    @Override
    public List<CrewDTO> toCrewDTO(List<Crew> crewList) {
        if ( crewList == null ) {
            return null;
        }

        List<CrewDTO> list = new ArrayList<CrewDTO>( crewList.size() );
        for ( Crew crew : crewList ) {
            list.add( toCrewDTO( crew ) );
        }

        return list;
    }

    @Override
    public List<Crew> toCrew(List<CrewDTO> crewDTOList) {
        if ( crewDTOList == null ) {
            return null;
        }

        List<Crew> list = new ArrayList<Crew>( crewDTOList.size() );
        for ( CrewDTO crewDTO : crewDTOList ) {
            list.add( toCrew( crewDTO ) );
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
}
