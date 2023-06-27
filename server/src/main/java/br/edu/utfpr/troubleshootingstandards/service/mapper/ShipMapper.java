package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.ShipDTO;
import br.edu.utfpr.troubleshootingstandards.model.Ship;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper
public interface ShipMapper {

    ShipDTO toShipDTO(Ship ship);

    Ship toShip(ShipDTO shipDTO);

    List<ShipDTO> toShipDTO(List<Ship> shipList);

    List<Ship> toShip(List<ShipDTO> shipDTOList);
}
