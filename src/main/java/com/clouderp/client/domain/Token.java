package com.clouderp.client.domain;

import java.io.Serializable;
import java.util.Date;

public class Token  implements Serializable{
    private String token ;
    private String tokenType;
    private String refreshToken;
    private int expiresIn;
    private Date tokenCreateOn;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getTokenType() {
        return tokenType;
    }

    public void setTokenType(String tokenType) {
        this.tokenType = tokenType;
    }

    public String getRefreshToken() {
        return refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public int getExpiresIn() {
        return expiresIn;
    }

    public void setExpiresIn(int expiresIn) {
        this.expiresIn = expiresIn;
    }

    public Date getTokenCreateOn() {
        return tokenCreateOn;
    }

    public void setTokenCreateOn(Date tokenCreateOn) {
        this.tokenCreateOn = tokenCreateOn;
    }
}
