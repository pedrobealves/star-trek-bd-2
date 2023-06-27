package br.edu.utfpr.troubleshootingstandards.controller;

import br.edu.utfpr.troubleshootingstandards.dto.DepartmentActiveCrewByDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import br.edu.utfpr.troubleshootingstandards.model.Proficiency;
import br.edu.utfpr.troubleshootingstandards.model.Status;
import br.edu.utfpr.troubleshootingstandards.service.DepartmentService;
import br.edu.utfpr.troubleshootingstandards.service.DepartmentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RequestMapping("/api/departments")
@RestController
public class DepartmentController {
    @Autowired
    private DepartmentService departmentService;

    @GetMapping("/{name}/active-crews")
    // get a specific lesson by id
    public ResponseEntity<DepartmentActiveCrewByDTO> getActiveCrewByDepartment(@PathVariable String name) throws EntityNotFoundException {
        Optional<DepartmentActiveCrewByDTO> departmentActiveCrewByDTOOptional = departmentService.getActiveCrewByDepartment(name);
        return ResponseEntity.of(departmentActiveCrewByDTOOptional);
    }

     @GetMapping("/proficiency")
    // returns list of anticipation's modalities
    public ResponseEntity<Proficiency[]> getModalities() {
        return ResponseEntity.of(Optional.of(Proficiency.values()));
    }
}
