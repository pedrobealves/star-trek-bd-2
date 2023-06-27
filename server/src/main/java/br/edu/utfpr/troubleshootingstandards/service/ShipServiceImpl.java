package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.DepartmentActiveCrewByDTO;
import br.edu.utfpr.troubleshootingstandards.dto.ShipCrewMissionCountDTO;
import br.edu.utfpr.troubleshootingstandards.dto.ShipDTO;
import br.edu.utfpr.troubleshootingstandards.exception.EntityNotFoundException;
import br.edu.utfpr.troubleshootingstandards.model.Ship;
import br.edu.utfpr.troubleshootingstandards.repository.ShipRepository;
import br.edu.utfpr.troubleshootingstandards.service.mapper.ShipMapper;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@AllArgsConstructor
@Component
public class ShipServiceImpl implements ShipService {

    @Autowired
    private ShipRepository shipRepository;

    @Autowired
    private ShipMapper shipMapper;

    @Override
    public List<ShipDTO> getAllShips() {
        List<Ship> shipList = shipRepository.findAll();
        return shipList.stream()
                .map(shipMapper::toShipDTO)
                .collect(Collectors.toList());
    }

    @Override
    public Optional<ShipDTO> getShipById(Long id) throws EntityNotFoundException {
        Optional<Ship> optionalShip = shipRepository.findById(id);
        return optionalShip.map(shipMapper::toShipDTO);
    }

    @Override
    public ShipDTO saveShip(ShipDTO shipDTO) {
        Ship ship = shipMapper.toShip(shipDTO);
        Ship savedShip = shipRepository.save(ship);
        return shipMapper.toShipDTO(savedShip);
    }

    @Override
    public void deleteShip(Long id) throws EntityNotFoundException {
        if (!shipRepository.existsById(id)) {
            throw new EntityNotFoundException(Ship.class, "id", id.toString());
        }
        shipRepository.deleteById(id);
    }

    public List<ShipCrewMissionCountDTO> getActiveCrewByDepartment(int numberMissions, int numberCrews) {
        List<Object[]> resultList = shipRepository.getShipCrewMissionCount(numberMissions, numberCrews);

        return resultList.stream()
            .map(result -> new ShipCrewMissionCountDTO(
                    (String) result[0],
                    (Integer) result[1],
                    (BigInteger) result[2],
                    (BigInteger) result[3]
            ))
            .collect(Collectors.toList());
    }
}
