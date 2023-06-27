package br.edu.utfpr.client.controller;


import br.edu.utfpr.client.model.*;
import br.edu.utfpr.client.util.PaginationUtil;
import br.edu.utfpr.client.util.RestUtil;
import com.google.gson.Gson;
import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.exceptions.UnirestException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.Arrays;

@Controller
@RequestMapping("/relatorio-missao")
public class MissionReportController {
    @Autowired
    private RestUtil restUtil;

   @GetMapping("/listar")
    public String listar(@RequestParam(defaultValue = "1") int page, ModelMap model) throws UnirestException {
        int pageSize = 10;

        MissionReport[] missionReports = new Gson()
                .fromJson(
                        restUtil.doGet("missions/report"),
                        MissionReport[].class
                );

        int totalItems = missionReports.length;
        int totalPages = PaginationUtil.getTotalPages(totalItems, pageSize);

        // Verificar se a página atual excede o limite superior
        if (page > totalPages) {
            page = totalPages;
        }

        // Verificar se a página atual é menor que 1 (limite inferior)
        if (page < 1) {
            page = 1;
        }

        MissionReport[] missionReportsPage = PaginationUtil.getPageItems(missionReports, page, pageSize);


        model.addAttribute("missionreport", missionReportsPage);
        model.addAttribute("page", page);
        model.addAttribute("totalPages", totalPages);

        return "missionreport/list";
    }

    @GetMapping("/{id}")
    public String listarCrew(@PathVariable("id") Long id, ModelMap model) throws UnirestException {

        Crew[] crews = new Gson()
                .fromJson(
                        restUtil.doGet("missions/" + id + "/crews"),
                        Crew[].class
                );

        model.addAttribute("crew", crews);
        model.addAttribute("id", id);

        return "missionreport/listCrew";
    }

    @GetMapping("/{missionId}/excluir/{crewId}")
    public String excluir(@PathVariable("missionId") int missionId, @PathVariable("crewId") int crewId, RedirectAttributes attr) throws UnirestException {

    // Chamar o método doDelete para enviar a solicitação de exclusão
        HttpResponse<JsonNode> response = restUtil.doDelete("/missions/crew-mission/" + crewId +"/" + missionId);

        // Verificar o status da resposta
        int status = response.getStatus();
        if (status == 204) {
            attr.addFlashAttribute("success", "Tripulante excluído com sucesso.");
        } else {
            attr.addFlashAttribute("fail", "Erro ao excluir tripulante. Status: " + status);
        }

        return "redirect:/relatorio-missao/" + missionId ;
    }

    @ModelAttribute("status")
    public String[] getModalities() throws UnirestException {
        return new Gson()
                .fromJson(
                        restUtil.doGet("missions/status"),
                        String[].class
                );
    }

    @GetMapping("/cadastrar")
    public String cadastrar(MissionReport missionReport) {
        return "missionreport/register";
    }

    @PostMapping("/salvar")
    public String salvar(@Valid MissionReport missionReport, BindingResult result, RedirectAttributes attr) throws UnirestException {
        return getString(missionReport, result, attr);
    }

    private String getString(@Valid MissionReport missionReport, BindingResult result, RedirectAttributes attr) throws UnirestException {
        if (result.hasErrors()) {
            return "missionreport/register";
        }

        HttpResponse<JsonNode> response = restUtil.doPost(new Gson().toJson(missionReport, MissionReport.class), "missions/report");

        if ((response.getStatus() != 200 && response.getStatus() != 201)) {
            result.rejectValue(
                    response.getBody().getObject().getJSONObject("subError").getString("field"),
                    "error.proposalAnticipation",
                    response.getBody().getObject().getJSONObject("subError").getString("message"));
            return "anticipation/register";
        }

        attr.addFlashAttribute("success", "Relatório de missão inserido com sucesso.");

        return "redirect:/relatorio-missao/listar";
    }

    @ModelAttribute("crews")
    public Crew[] getCrews() throws UnirestException {
        return new Gson()
                .fromJson(
                        restUtil.doGet("crews"),
                        Crew[].class
                );
    }

    @ModelAttribute("planets")
    public Planet[] getPlanets() throws UnirestException {
        return new Gson()
                .fromJson(
                        restUtil.doGet("planets"),
                        Planet[].class
                );
    }

    @ModelAttribute("ships")
    public Ship[] getShips() throws UnirestException {
        return new Gson()
                .fromJson(
                        restUtil.doGet("ships"),
                        Ship[].class
                );
    }

}
