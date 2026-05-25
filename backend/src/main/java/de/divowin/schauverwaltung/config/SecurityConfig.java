package de.divowin.schauverwaltung.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import java.util.List;

/**
 * Sicherheitskonfiguration.
 * <p>
 * Für die initiale Entwicklung ist die Sicherheit minimal konfiguriert.
 * Vor dem Produktiveinsatz muss eine vollständige Authentifizierung
 * (z.B. OAuth2 / JWT) implementiert werden.
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                .cors(cors -> cors.configurationSource(corsConfigurationSource()))
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests(auth -> auth
                        // Swagger / OpenAPI öffentlich
                        .requestMatchers(
                                "/swagger-ui/**",
                                "/swagger-ui.html",
                                "/v3/api-docs/**",
                                "/h2-console/**"
                        ).permitAll()
                        // Alle API-Endpunkte zunächst öffentlich (TODO: absichern!)
                        .anyRequest().permitAll()
                )
                .headers(headers -> headers
                        .frameOptions(frameOptions -> frameOptions.disable()));
        return http.build();
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
    CorsConfiguration config = new CorsConfiguration();

    config.setAllowedOrigins(List.of(
        "http://127.0.0.1:5500",
        "http://localhost:5500",
        "https://frontend-lsv0.onrender.com"
    ));

    config.setAllowedMethods(List.of(
        "GET",
        "POST",
        "PUT",
        "PATCH",
        "DELETE",
        "OPTIONS"
    ));

    config.setAllowedHeaders(List.of("*"));
    config.setAllowCredentials(false);

    UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
    source.registerCorsConfiguration("/**", config);

    return source;
}
}
