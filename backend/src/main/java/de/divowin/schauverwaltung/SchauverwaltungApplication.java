package de.divowin.schauverwaltung;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

/**
 * DivoWin Schauverwaltung – Hauptklasse
 *
 * Neuentwicklung der DivoWin Vogelschau-Verwaltungssoftware
 * auf Basis von Java 21 / Spring Boot 3 / PostgreSQL.
 *
 * Ursprüngliche Software: Dieter Vogelsänger, Copyright 2011–2018
 */
@SpringBootApplication
@EnableJpaAuditing
public class SchauverwaltungApplication {

    public static void main(String[] args) {
        SpringApplication.run(SchauverwaltungApplication.class, args);
    }
}
