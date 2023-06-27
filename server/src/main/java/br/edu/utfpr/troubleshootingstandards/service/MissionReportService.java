package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.MissionReportDTO;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public interface MissionReportService {
    void insertMissionReport(MissionReportDTO missionReportDTO);

    Optional<MissionReportDTO>  getMissionReport(Long id);

    List<MissionReportDTO> getAllMissionReports();

}
