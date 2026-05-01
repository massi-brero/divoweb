package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.service.SchauService;
import jakarta.persistence.EntityNotFoundException;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.jpa.mapping.JpaMetamodelMappingContext;
import org.springframework.test.web.servlet.MockMvc;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

/**
 * Testet den GlobalExceptionHandler über einen echten Controller-Aufruf.
 * SchauController dient als Vehikel – die eigentliche Assertions betreffen
 * die HTTP-Status-Codes und das Problem-Detail-Format.
 */
@WebMvcTest(value = SchauController.class,
        excludeAutoConfiguration = SecurityAutoConfiguration.class)
@MockBean(JpaMetamodelMappingContext.class)
class GlobalExceptionHandlerTest {

    @Autowired MockMvc mockMvc;
    @MockBean SchauService schauService;

    @Test
    void entityNotFoundException_liefert404() throws Exception {
        when(schauService.schauById(99L))
                .thenThrow(new EntityNotFoundException("Schau nicht gefunden: 99"));

        mockMvc.perform(get("/v1/schauen/99"))
                .andExpect(status().isNotFound());
    }

    @Test
    void illegalArgumentException_liefert400() throws Exception {
        when(schauService.schauById(1L))
                .thenThrow(new IllegalArgumentException("Ungültige Schau-ID: 1"));

        mockMvc.perform(get("/v1/schauen/1"))
                .andExpect(status().isBadRequest());
    }

    @Test
    void validationFehler_liefert422MitDetail() throws Exception {
        // Leeres JSON → MethodArgumentNotValidException
        mockMvc.perform(post("/v1/schauen")
                        .contentType("application/json")
                        .content("{}"))
                .andExpect(status().isUnprocessableEntity());
    }
}
