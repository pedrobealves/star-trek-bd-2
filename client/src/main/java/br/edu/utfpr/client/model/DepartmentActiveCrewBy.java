package br.edu.utfpr.client.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigInteger;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DepartmentActiveCrewBy {
    private String departmentName;
    private BigInteger activeCrewCount;
    private BigInteger totalResourcesUsed;
}
