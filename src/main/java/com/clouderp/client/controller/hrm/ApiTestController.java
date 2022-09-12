package com.clouderp.client.controller.hrm;

import org.apache.commons.codec.binary.Base64;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;
import java.util.Arrays;

@Controller
@RequestMapping("/api/test")
//@RequestMapping("/user")
public class ApiTestController {

    @Autowired
    private HttpSession httpSession;
    
    @RequestMapping(value = "/login/test", method = RequestMethod.GET)
    public String loginTest() throws Exception{
        ResponseEntity<String> response = null;

        RestTemplate restTemplate = new RestTemplate();
        String credentials = "my-trusted-client:secret";
        String encodedCredentials = new String(Base64.encodeBase64(credentials.getBytes()));

        HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        headers.add("Authorization", "Basic " + encodedCredentials);

        HttpEntity<String> request = new HttpEntity<String>(headers);
        String token = (String) httpSession.getAttribute("token");
        String access_token_url = "http://localhost:2222/api/v1/departments/findAllDepartment";
        access_token_url += "?access_token=" + token;


        response = restTemplate.exchange(access_token_url, HttpMethod.GET, request, String.class);


        // Get the Access Token From the recieved JSON response
        ObjectMapper mapper = new ObjectMapper();
        JsonNode node = mapper.readTree(response.getBody());

        return response.toString();
    }


    @RequestMapping(value = "/employee/test", method = RequestMethod.GET)
    public String employeeTest() throws Exception{
        ResponseEntity<String> response = null;

        RestTemplate restTemplate = new RestTemplate();
        String credentials = "my-trusted-client:secret";
        String encodedCredentials = new String(Base64.encodeBase64(credentials.getBytes()));

        HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        headers.add("Authorization", "Basic " + encodedCredentials);

        HttpEntity<String> request = new HttpEntity<String>(headers);
        String token = (String) httpSession.getAttribute("token");
        String access_token_url = "http://localhost:2222/api/v1/employees/findAllEmployee";
        access_token_url += "?access_token=" + token;


        response = restTemplate.exchange(access_token_url, HttpMethod.GET, request, String.class);


        // Get the Access Token From the recieved JSON response
        ObjectMapper mapper = new ObjectMapper();
        JsonNode node = mapper.readTree(response.getBody());

        return response.toString();
    }

    @RequestMapping(value = "/employee/noaccess", method = RequestMethod.GET)
    public String employeeTestNoAccess() throws Exception{
        ResponseEntity<String> response = null;

        RestTemplate restTemplate = new RestTemplate();
        String credentials = "my-trusted-client:secret";
        String encodedCredentials = new String(Base64.encodeBase64(credentials.getBytes()));

        HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        headers.add("Authorization", "Basic " + encodedCredentials);

        HttpEntity<String> request = new HttpEntity<String>(headers);
        String token = (String) httpSession.getAttribute("token");
        String access_token_url = "http://localhost:2222/api/v1/employees/findAllEmployee";
        //    access_token_url += "?access_token=" + token;


        response = restTemplate.exchange(access_token_url, HttpMethod.GET, request, String.class);


        // Get the Access Token From the recieved JSON response
        ObjectMapper mapper = new ObjectMapper();
        JsonNode node = mapper.readTree(response.getBody());

        return response.toString();
    }
}
