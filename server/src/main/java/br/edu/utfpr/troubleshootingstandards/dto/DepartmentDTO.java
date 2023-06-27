package br.edu.utfpr.troubleshootingstandards.dto;

import br.edu.utfpr.troubleshootingstandards.model.Proficiency;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DepartmentDTO {

    private Long id;

    @NotNull
    private String name;
}
