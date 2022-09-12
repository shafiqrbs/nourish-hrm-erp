package com.clouderp.client.security;

import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * Created by Williyam on 13/04/2018.
 */

@EnableOAuth2Sso
@Configuration
public class AuthorizationConfig extends WebSecurityConfigurerAdapter {

	@Override
    protected void configure(HttpSecurity http) throws Exception {
        http.antMatcher("/")
                .authorizeRequests()
                .antMatchers( "/auth/**").permitAll()
        //        .antMatchers("/**").authenticated()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .permitAll()
                ;
//        http
//                .antMatcher("/**")
//                .authorizeRequests()
//                .antMatchers("/**","/user/login**","/auth/login**").permitAll()
             //   .antMatchers("/hr**").authenticated()
            //    .anyRequest().authenticated()
//                .and()
//                .formLogin()
//                .loginPage("/auth/login")
//                .failureUrl("/auth/login")
                ;
    }
}
