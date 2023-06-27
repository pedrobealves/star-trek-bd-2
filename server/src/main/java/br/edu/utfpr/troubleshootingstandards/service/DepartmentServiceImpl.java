package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.DepartmentActiveCrewByDTO;
import br.edu.utfpr.troubleshootingstandards.dto.DepartmentDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import br.edu.utfpr.troubleshootingstandards.model.Department;
import br.edu.utfpr.troubleshootingstandards.repository.DepartmentRepository;
import br.edu.utfpr.troubleshootingstandards.service.DepartmentService;
import br.edu.utfpr.troubleshootingstandards.service.mapper.DepartmentMapper;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@AllArgsConstructor
@Component
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentRepository departmentRepository;

    @Autowired
    private DepartmentMapper departmentMapper;

    @Override
    public List<DepartmentDTO> getAllDepartments() {
        List<Department> departmentList = departmentRepository.findAll();
        return departmentList.stream()
                .map(departmentMapper::toDepartmentDTO)
                .collect(Collectors.toList());
    }

    @Override
    public Optional<DepartmentDTO> getDepartmentById(Long id) throws EntityNotFoundException {
        Optional<Department> optionalDepartment = departmentRepository.findById(id);
        return optionalDepartment.map(departmentMapper::toDepartmentDTO);
    }

    @Override
    public DepartmentDTO saveDepartment(DepartmentDTO departmentDTO) {
        Department department = departmentMapper.toDepartment(departmentDTO);
        Department savedDepartment = departmentRepository.save(department);
        return departmentMapper.toDepartmentDTO(savedDepartment);
    }

    @Override
    public void deleteDepartment(Long id) throws EntityNotFoundException {
        if (!departmentRepository.existsById(id)) {
            throw new EntityNotFoundException(Department.class, "id", id.toString());
        }
        departmentRepository.deleteById(id);
    }

    public Optional<DepartmentActiveCrewByDTO> getActiveCrewByDepartment(String name) {
        List<Object[]> resultList = departmentRepository.getDepartmentByDepartmentName(name);

        if (resultList.isEmpty()) {
            return Optional.empty();
        }

        Object[] result = resultList.get(0);
        DepartmentActiveCrewByDTO dto = new DepartmentActiveCrewByDTO();

        dto.setDepartmentName( (String) result[0]);
        dto.setActiveCrewCount((BigInteger) result[1]);
        dto.setTotalResourcesUsed((BigInteger) result[2]);

        return Optional.of(dto);
    }
}
