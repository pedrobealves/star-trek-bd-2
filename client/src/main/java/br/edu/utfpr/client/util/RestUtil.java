package br.edu.utfpr.client.util;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;
import com.mashape.unirest.request.GetRequest;
import com.mashape.unirest.request.HttpRequestWithBody;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class RestUtil {

    private final String API_URL = "http://localhost:8081/api/";

    public String doGet(String url) throws UnirestException {
        return Unirest
                .get(API_URL + url)
                .asJson()
                .getBody()
                .toString();
    }

    public String doGetById(String url, Long id) throws UnirestException {
        return Unirest
                .get(API_URL + url)
                .routeParam("id", String.valueOf(id))
                .asJson()
                .getBody()
                .toString();
    }

    public String doGetParam(String url, Map<String, String> params) throws UnirestException {

        GetRequest request = Unirest.get(API_URL + url);
        params.forEach(request::queryString);

        HttpResponse<JsonNode> response = request.asJson();

        return response.getBody().toString();
    }

    public HttpResponse<JsonNode> doDelete(String url, Long id) throws UnirestException {
        return Unirest
                .delete(API_URL + url)
                .routeParam("id", String.valueOf(id))
                .asJson();
    }

     public HttpResponse<JsonNode> doDelete(String url) throws UnirestException {
        return Unirest
                .delete(API_URL + url)
                .asJson();
    }

    public HttpResponse<JsonNode> doPost(String data, String url) throws UnirestException {
        return Unirest.post(API_URL + url)
                .header("Content-type", "application/json")
                .header("accept", "application/json")
                .body(data)
                .asJson();
    }
}
