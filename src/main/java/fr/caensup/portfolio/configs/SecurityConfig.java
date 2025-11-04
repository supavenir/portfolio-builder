package fr.caensup.portfolio.configs;

import fr.caensup.portfolio.services.UserService;
import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.servlet.util.matcher.PathPatternRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(auth -> auth.requestMatchers(
                        PathPatternRequestMatcher.withDefaults().matcher("/"),
                                PathPatternRequestMatcher.withDefaults().matcher("/register"),
                                PathPatternRequestMatcher.withDefaults().matcher("/users/createUser/**"),
                                PathPatternRequestMatcher.withDefaults().matcher("/css"),
                                PathPatternRequestMatcher.withDefaults().matcher("/images"),
                                PathRequest.toH2Console()
                                ).permitAll()
                        .anyRequest().authenticated()
                ).csrf(AbstractHttpConfigurer::disable)
                .headers(headers->headers.frameOptions(HeadersConfigurer.FrameOptionsConfig::sameOrigin))
                .formLogin(
                        (form) -> form.loginPage("/login").defaultSuccessUrl("/users", true).permitAll());
        return http.build();
    }

    @Primary
    @Bean
    public UserDetailsService getUserDetailsService() {
        return new UserService();
    }

    @Bean
    public PasswordEncoder getPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider(UserDetailsService userService) {
        DaoAuthenticationProvider auth = new DaoAuthenticationProvider(userService);
        auth.setPasswordEncoder(getPasswordEncoder());
        return auth;
    }

}