package br.edu.utfpr.troubleshootingstandards.controller;

import br.edu.utfpr.troubleshootingstandards.dto.CrewDTO;
import br.edu.utfpr.troubleshootingstandards.dto.PlanetDTO;
import br.edu.utfpr.troubleshootingstandards.service.CrewService;
import br.edu.utfpr.troubleshootingstandards.service.PlanetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/api/planets")
@RestController
public class PlanetController {
    @Autowired
    private PlanetService planetService;

    @GetMapping
    // returns list of all lessons
    public ResponseEntity<List<PlanetDTO>> getAll() {
        return ResponseEntity.ok(planetService.getAllPlanets());
    }

}
