package br.edu.utfpr.troubleshootingstandards.dto;

import lombok.*;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CrewDTO {

    private Long id;

    @NotNull
    private String firstName;

    @NotNull
    private String lastName;

    @NotNull
    @Min(1)
    private int rank;

    private String species;

    private LocalDate dateBirth;

    private LocalDate dateJoined;

    @NotNull
    private Boolean activeStatus;

    @NotNull
    private DepartmentDTO department;
}
