package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.DepartmentDTO;
import br.edu.utfpr.troubleshootingstandards.model.Department;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper
public interface DepartmentMapper {

    DepartmentDTO toDepartmentDTO(Department department);

    Department toDepartment(DepartmentDTO departmentDTO);

    List<DepartmentDTO> toDepartmentDTO(List<Department> departmentList);

    List<Department> toDepartment(List<DepartmentDTO> departmentDTOList);
}
