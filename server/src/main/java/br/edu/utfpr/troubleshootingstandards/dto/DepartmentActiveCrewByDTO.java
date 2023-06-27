package br.edu.utfpr.troubleshootingstandards.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigInteger;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DepartmentActiveCrewByDTO {
    private String departmentName;
    private BigInteger activeCrewCount;
    private BigInteger totalResourcesUsed;
}
