package br.edu.utfpr.client.controller;

import java.util.HashMap;
import java.util.Map;
import br.edu.utfpr.client.model.MissionReport;
import br.edu.utfpr.client.model.ShipCrewMissionCount;
import br.edu.utfpr.client.util.PaginationUtil;
import br.edu.utfpr.client.util.RestUtil;
import com.google.gson.Gson;
import com.mashape.unirest.http.exceptions.UnirestException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/nave")
public class ShipController {

    @Autowired
    private RestUtil restUtil;
    @GetMapping("/listar")
    public String listar(@RequestParam(defaultValue = "1") int page, ModelMap model) throws UnirestException {
        int pageSize = 10;

        Map<String, String> params = new HashMap<>();
        params.put("numberMissions", String.valueOf(0));
        params.put("numberCrews", String.valueOf(0));


        ShipCrewMissionCount[] shipCrewMissionCounts = new Gson()
                .fromJson(
                        restUtil.doGetParam("ships/crew-mission-count", params),
                        ShipCrewMissionCount[].class
                );

        int totalItems = shipCrewMissionCounts.length;
        int totalPages = PaginationUtil.getTotalPages(totalItems, pageSize);

         // Verificar se a página atual excede o limite superior
        if (page > totalPages) {
            page = totalPages;
        }

        // Verificar se a página atual é menor que 1 (limite inferior)
        if (page < 1) {
            page = 1;
        }

        ShipCrewMissionCount[] crewMissionCounts = PaginationUtil.getPageItems(shipCrewMissionCounts, page, pageSize);


        model.addAttribute("ship", crewMissionCounts);
        model.addAttribute("page", page);
        model.addAttribute("totalPages", totalPages);

        return "ships/list";
    }
}
