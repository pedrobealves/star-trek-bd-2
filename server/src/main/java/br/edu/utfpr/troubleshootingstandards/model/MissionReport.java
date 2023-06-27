package br.edu.utfpr.troubleshootingstandards.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Immutable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import java.io.Serializable;
import java.time.LocalDate;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Immutable
public class MissionReport implements Serializable {

    @Id
    @Column(name = "mission_id")
    private Long missionId;

    @Column(name = "mission_name")
    private String missionName;

    @Column(name = "start_date")
    private LocalDate startDate;

    @Column(name = "end_date")
    private LocalDate endDate;

    @Column(name = "mission_status")
    private String missionStatus;

    @Column(name = "ship_name")
    private String shipName;

    @Column(name = "planet_name")
    private String planetName;

    @Column(name = "captain_name")
    private String captainName;

}
