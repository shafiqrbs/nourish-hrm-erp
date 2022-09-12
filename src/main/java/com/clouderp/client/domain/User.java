package com.clouderp.client.domain;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

public class User  implements Serializable {
    private static final long serialVersionUID = 1L;

    private String email;

    private String password;

    private boolean rememberMe;

    private String token;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean getRememberMe() {
        return rememberMe;
    }

    public void setRememberMe(boolean rememberMe) {
        this.rememberMe = rememberMe;
    }
}