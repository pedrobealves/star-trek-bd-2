package br.edu.utfpr.troubleshootingstandards.controller;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.dto.MissionDTO;
import br.edu.utfpr.troubleshootingstandards.dto.MissionReportDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import br.edu.utfpr.troubleshootingstandards.model.Status;
import br.edu.utfpr.troubleshootingstandards.service.MissionReportService;
import br.edu.utfpr.troubleshootingstandards.service.MissionReportServiceImpl;
import br.edu.utfpr.troubleshootingstandards.service.MissionService;
import br.edu.utfpr.troubleshootingstandards.service.MissionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@RequestMapping("/api/missions")
@RestController
public class MissionController {

    @Autowired
    private MissionReportService missionReportService;

    @Autowired
    private MissionService missionService;

    @GetMapping
    public ResponseEntity<List<MissionDTO>> getAll() {
        return ResponseEntity.ok(missionService.getAllMissions());
    }

    @GetMapping ("/{id}")
    public ResponseEntity<MissionDTO> getById(@PathVariable Long id) throws EntityNotFoundException {
        Optional<MissionDTO> missionDTO = missionService.getMissionById(id);
        return ResponseEntity.of(missionDTO);
    }

    @GetMapping ("/{id}/crews")
    public ResponseEntity<List<CrewDTO>> getAllMissionCrew(@PathVariable Long id) {
        return ResponseEntity.ok(missionService.getAllCrews(id));
    }

    @GetMapping("/report")
    public ResponseEntity<List<MissionReportDTO>> getAllReport() {
        return ResponseEntity.ok(missionReportService.getAllMissionReports());
    }

    @PostMapping("/report")
    public ResponseEntity<MissionReportDTO> save(@Valid @RequestBody MissionReportDTO missionReportDTO){
            missionReportService.insertMissionReport(missionReportDTO);
            return ResponseEntity.status(201).body(missionReportDTO);
    }

    @DeleteMapping("/crew-mission/{crewId}/{missionId}")
    public ResponseEntity deleteCrewMission(@PathVariable("crewId") long crewId, @PathVariable("missionId") long missionId) throws EntityNotFoundException {
        missionService.deleteCrewMission(crewId, missionId);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/status")
    public ResponseEntity<Status[]> getModalities() {
        return ResponseEntity.of(Optional.of(Status.values()));
    }
}
