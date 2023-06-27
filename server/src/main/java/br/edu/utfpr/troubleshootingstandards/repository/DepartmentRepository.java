package br.edu.utfpr.troubleshootingstandards.repository;

import br.edu.utfpr.troubleshootingstandards.dto.DepartmentActiveCrewByDTO;
import br.edu.utfpr.troubleshootingstandards.model.Department;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Long> {
    @Query(value = "SELECT ac.department_name, ac.active_crew_count, SUM(r.quantity) AS total_resources_used " +
           "FROM ActiveCrewByDepartment ac " +
           "JOIN department d ON ac.department_name = d.name " +
           "JOIN crew c ON d.id = c.department_id " +
           "JOIN crew_mission cm ON c.id = cm.crew_id " +
           "JOIN resource_mission rm ON cm.mission_id = rm.mission_id " +
           "JOIN resource r ON rm.resource_id = r.id " +
           "WHERE ac.department_name = :departmentName " +
           "GROUP BY ac.department_name, ac.active_crew_count", nativeQuery = true)
    List<Object[]> getDepartmentByDepartmentName(@Param("departmentName") String departmentName);
}
