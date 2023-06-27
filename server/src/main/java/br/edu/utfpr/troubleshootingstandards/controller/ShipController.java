package br.edu.utfpr.troubleshootingstandards.controller;

import br.edu.utfpr.troubleshootingstandards.dto.*;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import br.edu.utfpr.troubleshootingstandards.service.ShipService;
import br.edu.utfpr.troubleshootingstandards.service.ShipServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RequestMapping("/api/ships")
@RestController
public class ShipController {
    @Autowired
    private ShipService shipService;

    @GetMapping("/crew-mission-count")
    public ResponseEntity<List<ShipCrewMissionCountDTO>> getCrewMissionCount(@RequestParam("numberMissions") int numberMissions,@RequestParam("numberCrews") int numberCrews) throws EntityNotFoundException {
        List<ShipCrewMissionCountDTO> shipCrewMissionCountDTO = shipService.getActiveCrewByDepartment(numberMissions, numberCrews);
        return ResponseEntity.ok(shipCrewMissionCountDTO);
    }

    @GetMapping
    // returns list of all lessons
    public ResponseEntity<List<ShipDTO>> getAll() {
        return ResponseEntity.ok(shipService.getAllShips());
    }


}
