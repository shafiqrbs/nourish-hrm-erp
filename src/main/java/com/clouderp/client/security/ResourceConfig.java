package com.clouderp.client.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.web.context.request.RequestContextListener;
import org.springframework.web.servlet.config.annotation.*;

/**
 * Created by Williyam on 13/04/2018.
 */

@Configuration
@EnableWebMvc
public class ResourceConfig extends WebMvcConfigurerAdapter {

    private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
            "classpath:/META-INF/resources/", "classpath:/resources/",
            "classpath:/static/", "classpath:/public/"
    };
//    private static final String[] FILEPATH_RESOURCE_LOCATIONS = {
//            "file:/assets/img/profile/",
//            "file:/assets/img/sign/"
//    };
//    private static final String[] FILEPATH_RESOURCE_HANDLERS = {
//            "/assets/img/profile/**",
//            "/assets/img/sign/**"
//    };

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
//        super.addViewControllers(registry);
        registry.addViewController("/login").setViewName("redirect:/user/login");
    }
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**")
//    	registry.addResourceHandler("/resources/**")
                .addResourceLocations(CLASSPATH_RESOURCE_LOCATIONS);

//        registry.addResourceHandler(FILEPATH_RESOURCE_HANDLERS)
//                .addResourceLocations(FILEPATH_RESOURCE_LOCATIONS);
    }

    @Bean
    public RequestContextListener requestContextListener() {
        return new RequestContextListener();
    }


    @Bean
    public static PropertySourcesPlaceholderConfigurer placeholderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }

}
