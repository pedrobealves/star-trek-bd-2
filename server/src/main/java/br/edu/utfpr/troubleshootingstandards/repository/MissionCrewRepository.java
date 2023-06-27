package br.edu.utfpr.troubleshootingstandards.repository;

public interface MissionCrewRepository {
    void executeCrewMissionOperations(Long v_crew_id, Long v_mission_id);
}
