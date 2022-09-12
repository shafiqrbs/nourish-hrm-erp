package com.clouderp.client.controller.hrm;

import com.clouderp.client.domain.Token;
import com.clouderp.client.domain.User;
import org.apache.commons.codec.binary.Base64;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private HttpSession httpSession;

    private String URL = "http://localhost:2222";
 //   private String URL = "http://139.162.63.98:2222";
    
    @GetMapping("/login")
    public String getLoginForm(@ModelAttribute("user") User user) {
//    	String view = "redirect:/auth/login";    	
    	String view = "accounts/login";
    	
    	System.out.println("Testing Login  ==> "+view);
    	return view;
    }
    
//    @PostMapping("/loginWithOutRedirect")
//    public String loginSuccess( @RequestBody User user) {
////    	String view = "redirect:/auth/login";    	
//    	String view = "accounts/success";
//    	
//    	System.out.println("URL IS==> "+ URL);
//    	System.out.println("Testing success  ==> "+view);
//    	System.out.println("Testing success Email  ==> "+user.getEmail());
//    	System.out.println("Testing success Pass  ==> "+user.getPassword());
//    	return view;
//    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginPost(@ModelAttribute("user") User user) throws Exception {
    	System.out.println("URL IS==> "+ URL);
    	System.out.println("USER IS==> "+user.getToken());
        ResponseEntity<String> response = null;
        String view = "";//"redirect:/auth/login";
        try {
            RestTemplate restTemplate = new RestTemplate();

            HttpHeaders headers = new HttpHeaders();
            headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
            headers.add("Authorization", "Basic " + getCreadential());

            HttpEntity<String> request = new HttpEntity<String>(headers);

            String access_token_url = URL + "/oauth/token";
            access_token_url += "?grant_type=password";
            access_token_url += "&username=" + user.getEmail();
            access_token_url += "&password=" + user.getPassword();
            
            System.out.println("access_token_url===> "+access_token_url);
            
            response = restTemplate.exchange(access_token_url, HttpMethod.POST, request, String.class);
            
            setToken(response);

            httpSession.setAttribute("email", user.getEmail());
            httpSession.setAttribute("password", user.getPassword());
            httpSession.setAttribute("rememberMe", user.getRememberMe());
            view = "redirect:/hr#!/employees/employee/general";
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return view;
    }

    @RequestMapping(value = "/loginWithOutRedirect", method = RequestMethod.POST)
    public @ResponseBody Token loginWithOutRedirect(@RequestBody User user) throws Exception {
        ResponseEntity<String> response = null;
        Token token = new Token();
    	System.out.println("URL IS in loginWithOutRedirect==> "+ URL);
    	System.out.println("USER Email IS==> "+user.getEmail());
    	System.out.println("USER Password IS==> "+user.getPassword());
        try {
            RestTemplate restTemplate = new RestTemplate();
            String credentials = "my-trusted-client:secret";
//            String credentials = "email : password";
            String encodedCredentials = new String(Base64.encodeBase64(credentials.getBytes()));
            
            System.out.println("encodedCredentials===> "+encodedCredentials);
            
            String token1 = (String) httpSession.getAttribute("token");
            
            System.out.println("token1 ===> "+token1);

            HttpHeaders headers = new HttpHeaders();
            headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
            headers.add("Authorization", "Basic " + encodedCredentials);

            HttpEntity<String> request = new HttpEntity<String>(headers);
            
            System.out.println("REQUEST IS==> "+request);

            String access_token_url = URL + "/oauth/token";
            
                        
            access_token_url += "?grant_type=password";
            access_token_url += "&email=" + user.getEmail();
            access_token_url += "&password=" + user.getPassword();
            
            System.out.println("access_token_url===> "+access_token_url);

            response = restTemplate.exchange(access_token_url, HttpMethod.POST, request, String.class);
            System.out.println("Response===> "+response);
            setToken(response);
            token = getToken();


            httpSession.setAttribute("email", user.getEmail());
            httpSession.setAttribute("password", user.getPassword());
            httpSession.setAttribute("rememberMe", user.getRememberMe());

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return token;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logout() throws Exception {
        ResponseEntity<String> response = null;
        String view = "redirect:/auth/login";

        resetToken();

        return view;
    }

    @RequestMapping(value = "/refreshToken", method = RequestMethod.POST)
    public @ResponseBody String refreshToken() throws Exception {
        ResponseEntity<String> response = null;
        try {
            RestTemplate restTemplate = new RestTemplate();
            String credentials = "my-trusted-client:secret";
            String encodedCredentials = new String(Base64.encodeBase64(credentials.getBytes()));

            HttpHeaders headers = new HttpHeaders();
            headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
            headers.add("Authorization", "Basic " + getCreadential());

            HttpEntity<String> request = new HttpEntity<String>(headers);

            String access_token_url = URL + "/oauth/token";
            access_token_url += "?grant_type=refresh_token";
            access_token_url += "&refresh_token=" + httpSession.getAttribute("refresh_token").toString();

            response = restTemplate.exchange(access_token_url, HttpMethod.POST, request, String.class);
            setToken(response);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return (String) httpSession.getAttribute("access_token");
    }


    @RequestMapping(value = "/token", method = RequestMethod.POST)
    public @ResponseBody Token getToken(){
        Token token = new Token();
  /*      int expires_in = (int) httpSession.getAttribute("expires_in");
        Date token_access_on = (Date) httpSession.getAttribute("token_access_on");

        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.setTime(token_access_on);
        calendar.add(Calendar.SECOND, expires_in);
        if(calendar.getTime().getTime() > calendar2.getTime().getTime()) {
            if(calendar.getTime().getTime() > calendar2.getTime().getTime()) {

            }
        }*/


        token.setToken((String) httpSession.getAttribute("access_token"));
        token.setTokenType((String) httpSession.getAttribute("token_type"));
        token.setRefreshToken((String) httpSession.getAttribute("refresh_token"));
        token.setExpiresIn(Integer.parseInt(httpSession.getAttribute("expires_in").toString()));
        token.setTokenCreateOn((Date) httpSession.getAttribute("token_access_on"));

        return  token;
    }

    @RequestMapping(value = "/getCreadential", method = RequestMethod.POST)
    public @ResponseBody String getCreadential(){
        String credentials = "my-trusted-client:secret";
        	System.out.println("credentials==> "+credentials);
        String encodedCredentials = new String(Base64.encodeBase64(credentials.getBytes()));
        return  encodedCredentials;
    }

    private void setToken(ResponseEntity<String> response) throws IOException {

        // Get the Access Token From the recieved JSON response
        ObjectMapper mapper = new ObjectMapper();
        JsonNode node = mapper.readTree(response.getBody());
        	System.out.println("BODY "+response.getBody());
        String access_token = node.path("access_token").asText();
        String token_type = node.path("token_type").asText();
        String refresh_token = node.path("refresh_token").asText();
        String expires_in = node.path("expires_in").asText();

        httpSession.setAttribute("access_token", access_token);
        httpSession.setAttribute("token_type", token_type);
        httpSession.setAttribute("refresh_token", refresh_token);
        httpSession.setAttribute("expires_in", expires_in);
        httpSession.setAttribute("token_access_on", Calendar.getInstance().getTime());
    }
    private void resetToken(){

        httpSession.removeAttribute("email");
        httpSession.removeAttribute("password");
        httpSession.removeAttribute("rememberMe");

        httpSession.removeAttribute("access_token");
        httpSession.removeAttribute("token_type");
        httpSession.removeAttribute("refresh_token");
        httpSession.removeAttribute("expires_in");
        httpSession.removeAttribute("token_access_on");
    }
}
