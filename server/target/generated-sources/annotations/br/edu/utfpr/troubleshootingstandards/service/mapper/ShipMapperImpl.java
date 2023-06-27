package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.dto.DepartmentDTO;
import br.edu.utfpr.troubleshootingstandards.dto.ShipDTO;
import br.edu.utfpr.troubleshootingstandards.model.Crew;
import br.edu.utfpr.troubleshootingstandards.model.Department;
import br.edu.utfpr.troubleshootingstandards.model.Proficiency;
import br.edu.utfpr.troubleshootingstandards.model.Ship;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_372 (Amazon.com Inc.)"
)
@Component
public class ShipMapperImpl implements ShipMapper {

    @Override
    public ShipDTO toShipDTO(Ship ship) {
        if ( ship == null ) {
            return null;
        }

        ShipDTO shipDTO = new ShipDTO();

        shipDTO.setId( ship.getId() );
        shipDTO.setName( ship.getName() );
        shipDTO.setCaptain( crewToCrewDTO( ship.getCaptain() ) );
        shipDTO.setLevel( ship.getLevel() );
        shipDTO.setMaxCrewSize( ship.getMaxCrewSize() );

        return shipDTO;
    }

    @Override
    public Ship toShip(ShipDTO shipDTO) {
        if ( shipDTO == null ) {
            return null;
        }

        Ship ship = new Ship();

        ship.setId( shipDTO.getId() );
        ship.setName( shipDTO.getName() );
        ship.setCaptain( crewDTOToCrew( shipDTO.getCaptain() ) );
        ship.setLevel( shipDTO.getLevel() );
        ship.setMaxCrewSize( shipDTO.getMaxCrewSize() );

        return ship;
    }

    @Override
    public List<ShipDTO> toShipDTO(List<Ship> shipList) {
        if ( shipList == null ) {
            return null;
        }

        List<ShipDTO> list = new ArrayList<ShipDTO>( shipList.size() );
        for ( Ship ship : shipList ) {
            list.add( toShipDTO( ship ) );
        }

        return list;
    }

    @Override
    public List<Ship> toShip(List<ShipDTO> shipDTOList) {
        if ( shipDTOList == null ) {
            return null;
        }

        List<Ship> list = new ArrayList<Ship>( shipDTOList.size() );
        for ( ShipDTO shipDTO : shipDTOList ) {
            list.add( toShip( shipDTO ) );
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
}
