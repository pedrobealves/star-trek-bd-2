package br.edu.utfpr.troubleshootingstandards.controller;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.service.CrewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/api/crews")
@RestController
public class CrewController {

    @Autowired
    private CrewService crewService;

    @GetMapping
    // returns list of all lessons
    public ResponseEntity<List<CrewDTO>> getAll() {
        return ResponseEntity.ok(crewService.getAllCrew());
    }

}
