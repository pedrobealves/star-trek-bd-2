package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.DepartmentDTO;
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
public class DepartmentMapperImpl implements DepartmentMapper {

    @Override
    public DepartmentDTO toDepartmentDTO(Department department) {
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

    @Override
    public Department toDepartment(DepartmentDTO departmentDTO) {
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

    @Override
    public List<DepartmentDTO> toDepartmentDTO(List<Department> departmentList) {
        if ( departmentList == null ) {
            return null;
        }

        List<DepartmentDTO> list = new ArrayList<DepartmentDTO>( departmentList.size() );
        for ( Department department : departmentList ) {
            list.add( toDepartmentDTO( department ) );
        }

        return list;
    }

    @Override
    public List<Department> toDepartment(List<DepartmentDTO> departmentDTOList) {
        if ( departmentDTOList == null ) {
            return null;
        }

        List<Department> list = new ArrayList<Department>( departmentDTOList.size() );
        for ( DepartmentDTO departmentDTO : departmentDTOList ) {
            list.add( toDepartment( departmentDTO ) );
        }

        return list;
    }
}
