package br.edu.utfpr.troubleshootingstandards.service;

import br.edu.utfpr.troubleshootingstandards.dto.MissionReportDTO;
import br.edu.utfpr.troubleshootingstandards.model.Mission;
import br.edu.utfpr.troubleshootingstandards.model.MissionReport;
import br.edu.utfpr.troubleshootingstandards.service.mapper.MissionReportMapper;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@AllArgsConstructor
@Component
@Transactional
public class MissionReportServiceImpl implements MissionReportService {

    @PersistenceContext
    private EntityManager entityManager;

    @Autowired
    private MissionReportMapper missionReportMapper;

    public void insertMissionReport(MissionReportDTO missionReportDTO) {
        MissionReport missionReport = missionReportMapper.toMissionReport(missionReportDTO);
        entityManager.createNativeQuery("INSERT INTO MissionReport ( mission_name, start_date, end_date, mission_status, ship_name, planet_name, captain_name) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)")
                .setParameter(1, missionReport.getMissionName())
                .setParameter(2, missionReport.getStartDate())
                .setParameter(3, missionReport.getEndDate())
                .setParameter(4, missionReport.getMissionStatus())
                .setParameter(5, missionReport.getShipName())
                .setParameter(6, missionReport.getPlanetName())
                .setParameter(7, missionReport.getCaptainName())
                .executeUpdate();
    }

    public Optional<MissionReportDTO> getMissionReport(Long id) {
         MissionReport missionReport = (MissionReport) entityManager.createNativeQuery("SELECT * FROM MissionReport WHERE mission_id = ?", MissionReport.class)
                .setParameter(1, id)
                .getSingleResult();
         return Optional.of(missionReportMapper.toMissionReportDTO(missionReport));
    }

    public List<MissionReportDTO> getAllMissionReports() {
        List<MissionReport> missionReportList =  entityManager.createNativeQuery("SELECT * FROM MissionReport", MissionReport.class)
            .getResultList();
        return missionReportList.stream()
                .map(missionReportMapper::toMissionReportDTO)
                .collect(Collectors.toList());
    }

}
