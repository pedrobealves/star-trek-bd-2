package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.ShipCrewMissionCountDTO;
import br.edu.utfpr.troubleshootingstandards.dto.ShipDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface ShipService {

    List<ShipDTO> getAllShips();

    Optional<ShipDTO> getShipById(Long id) throws EntityNotFoundException;

    ShipDTO saveShip(ShipDTO shipDTO);

    void deleteShip(Long id) throws EntityNotFoundException;

    List<ShipCrewMissionCountDTO> getActiveCrewByDepartment(int numberMissions, int numberCrews) throws EntityNotFoundException;
}
