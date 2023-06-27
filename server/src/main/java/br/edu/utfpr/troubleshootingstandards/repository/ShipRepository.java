package br.edu.utfpr.troubleshootingstandards.repository;

import br.edu.utfpr.troubleshootingstandards.model.Ship;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShipRepository extends JpaRepository<Ship, Long> {

    @Query(value = "SELECT s.name AS ship_name,s.level as ship_level, t1.crew_count, t2.mission_count\n" +
            "FROM ship s\n" +
            "LEFT JOIN (\n" +
            "   SELECT m.ship_id, COUNT(cm.crew_id) AS crew_count\n" +
            "   FROM mission m\n" +
            "   JOIN crew_mission cm ON m.id = cm.mission_id\n" +
            "   WHERE m.mission_status = 'EM_ANDAMENTO'\n" +
            "   GROUP BY m.ship_id\n" +
            ") t1 ON s.id = t1.ship_id\n" +
            "LEFT JOIN (\n" +
            "   SELECT m.ship_id AS id, COUNT(m.id) AS mission_count\n" +
            "   FROM mission m\n" +
            "   WHERE m.mission_status = 'EM_ANDAMENTO'\n" +
            "   GROUP BY m.ship_id\n" +
            ") t2 ON s.id = t2.id\n" +
            "WHERE mission_count > :numberMissions AND crew_count > :numberCrews" +
            " ORDER BY ship_level DESC", nativeQuery = true)
    List<Object[]> getShipCrewMissionCount(@Param("numberMissions") int numberMissions, @Param("numberCrews") int numberCrews);
}
