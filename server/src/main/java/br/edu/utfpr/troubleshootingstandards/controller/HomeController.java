package br.edu.utfpr.troubleshootingstandards.controller;

import br.edu.utfpr.troubleshootingstandards.dto.DepartmentActiveCrewByDTO;
import br.edu.utfpr.troubleshootingstandards.dto.MissionReportDTO;
import br.edu.utfpr.troubleshootingstandards.service.DepartmentServiceImpl;
import br.edu.utfpr.troubleshootingstandards.service.MissionReportServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
import java.util.Optional;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home() {
		return "home";
	}

}
