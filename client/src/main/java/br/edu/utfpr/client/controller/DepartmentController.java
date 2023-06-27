package br.edu.utfpr.client.controller;

import br.edu.utfpr.client.model.DepartmentActiveCrewBy;
import br.edu.utfpr.client.model.MissionReport;
import br.edu.utfpr.client.util.PaginationUtil;
import br.edu.utfpr.client.util.RestUtil;
import com.google.gson.Gson;
import com.mashape.unirest.http.exceptions.UnirestException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/departamento")
public class DepartmentController {
     @Autowired
    private RestUtil restUtil;
     @ModelAttribute("proficiency")
    public String[] getModalities() throws UnirestException {
        return new Gson()
                .fromJson(
                        restUtil.doGet("departments/proficiency"),
                        String[].class
                );
    }

    @GetMapping("/listar")
    public String listar(@RequestParam(required = false) String name,ModelMap model) throws UnirestException {


      if (name != null) {
        DepartmentActiveCrewBy departmentActiveCrew = new Gson()
                .fromJson(
                        restUtil.doGet("/departments/" + name + "/active-crews"),
                        DepartmentActiveCrewBy.class
                );

        model.addAttribute("DepartmentActiveCrewBy", departmentActiveCrew);
    }

    return "activecrewbydep/list";
    }

}

