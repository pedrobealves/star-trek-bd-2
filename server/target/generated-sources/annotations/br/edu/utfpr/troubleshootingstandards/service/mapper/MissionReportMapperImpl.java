package br.edu.utfpr.troubleshootingstandards.service.mapper;

import br.edu.utfpr.troubleshootingstandards.dto.MissionReportDTO;
import br.edu.utfpr.troubleshootingstandards.model.MissionReport;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_372 (Amazon.com Inc.)"
)
@Component
public class MissionReportMapperImpl implements MissionReportMapper {

    @Override
    public MissionReportDTO toMissionReportDTO(MissionReport missionReport) {
        if ( missionReport == null ) {
            return null;
        }

        MissionReportDTO missionReportDTO = new MissionReportDTO();

        missionReportDTO.setMissionId( missionReport.getMissionId() );
        missionReportDTO.setMissionName( missionReport.getMissionName() );
        missionReportDTO.setStartDate( missionReport.getStartDate() );
        missionReportDTO.setEndDate( missionReport.getEndDate() );
        missionReportDTO.setMissionStatus( missionReport.getMissionStatus() );
        missionReportDTO.setShipName( missionReport.getShipName() );
        missionReportDTO.setPlanetName( missionReport.getPlanetName() );
        missionReportDTO.setCaptainName( missionReport.getCaptainName() );

        return missionReportDTO;
    }

    @Override
    public MissionReport toMissionReport(MissionReportDTO missionReportDTO) {
        if ( missionReportDTO == null ) {
            return null;
        }

        MissionReport missionReport = new MissionReport();

        missionReport.setMissionId( missionReportDTO.getMissionId() );
        missionReport.setMissionName( missionReportDTO.getMissionName() );
        missionReport.setStartDate( missionReportDTO.getStartDate() );
        missionReport.setEndDate( missionReportDTO.getEndDate() );
        missionReport.setMissionStatus( missionReportDTO.getMissionStatus() );
        missionReport.setShipName( missionReportDTO.getShipName() );
        missionReport.setPlanetName( missionReportDTO.getPlanetName() );
        missionReport.setCaptainName( missionReportDTO.getCaptainName() );

        return missionReport;
    }

    @Override
    public List<MissionReportDTO> toMissionReportDTO(List<MissionReport> missionReportList) {
        if ( missionReportList == null ) {
            return null;
        }

        List<MissionReportDTO> list = new ArrayList<MissionReportDTO>( missionReportList.size() );
        for ( MissionReport missionReport : missionReportList ) {
            list.add( toMissionReportDTO( missionReport ) );
        }

        return list;
    }

    @Override
    public List<MissionReport> toMissionReport(List<MissionReportDTO> missionReportDTOList) {
        if ( missionReportDTOList == null ) {
            return null;
        }

        List<MissionReport> list = new ArrayList<MissionReport>( missionReportDTOList.size() );
        for ( MissionReportDTO missionReportDTO : missionReportDTOList ) {
            list.add( toMissionReport( missionReportDTO ) );
        }

        return list;
    }
}
