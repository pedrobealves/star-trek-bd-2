package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.DepartmentActiveCrewByDTO;
import br.edu.utfpr.troubleshootingstandards.dto.DepartmentDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface DepartmentService {

    List<DepartmentDTO> getAllDepartments();

    Optional<DepartmentDTO> getDepartmentById(Long id) throws EntityNotFoundException;

    DepartmentDTO saveDepartment(DepartmentDTO departmentDTO);

    void deleteDepartment(Long id) throws EntityNotFoundException;

    Optional<DepartmentActiveCrewByDTO> getActiveCrewByDepartment(String name) throws EntityNotFoundException;
}
