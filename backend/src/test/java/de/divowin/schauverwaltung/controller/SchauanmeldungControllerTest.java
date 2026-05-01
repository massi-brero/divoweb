package de.divowin.schauverwaltung.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import de.divowin.schauverwaltung.dto.*;
import de.divowin.schauverwaltung.enums.*;
import de.divowin.schauverwaltung.service.SchauanmeldungService;
import jakarta.persistence.EntityNotFoundException;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.jpa.mapping.JpaMetamodelMappingContext;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.util.List;

import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(value = SchauanmeldungController.class,
        excludeAutoConfiguration = SecurityAutoConfiguration.class)
@MockBean(JpaMetamodelMappingContext.class)
class SchauanmeldungControllerTest {

    @Autowired MockMvc mockMvc;
    @Autowired ObjectMapper objectMapper;
    @MockBean SchauanmeldungService anmeldungService;

    private SchauanmeldungResponseDTO responseDTO() {
        return new SchauanmeldungResponseDTO(
                100L, 1, 10L, "Mustermann", "Max", "10294",
                "WP/GR/DU", "Grau Dunkel", Geschlecht.MAENNLICH,
                "DWV-25-001", 2025, true, null,
                Platzierungskennzeichen.NORMAL, Medaille.KEINE, null, null
        );
    }

    @Test
    void alleAnmeldungen_returns200() throws Exception {
        when(anmeldungService.alleAnmeldungen(1L)).thenReturn(List.of(responseDTO()));

        mockMvc.perform(get("/v1/schauen/1/anmeldungen"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].kaefigNummer").value(1))
                .andExpect(jsonPath("$[0].zuecherNachname").value("Mustermann"));
    }

    @Test
    void nichtPlatzierte_returns200() throws Exception {
        when(anmeldungService.nichtPlatzierte(1L)).thenReturn(List.of(responseDTO()));

        mockMvc.perform(get("/v1/schauen/1/anmeldungen/nicht-platziert"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());
    }

    @Test
    void naechsteKaefigNummer_returns200() throws Exception {
        when(anmeldungService.naechsteKaefigNummer(1L)).thenReturn(5);

        mockMvc.perform(get("/v1/schauen/1/anmeldungen/naechste-kaefignummer"))
                .andExpect(status().isOk())
                .andExpect(content().string("5"));
    }

    @Test
    void byKaefigNummer_returns200() throws Exception {
        when(anmeldungService.byKaefigNummer(1L, 1)).thenReturn(responseDTO());

        mockMvc.perform(get("/v1/schauen/1/anmeldungen/kaefig/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.ringNummer").value("DWV-25-001"));
    }

    @Test
    void byKaefigNummer_returns404WennNichtGefunden() throws Exception {
        when(anmeldungService.byKaefigNummer(1L, 99))
                .thenThrow(new EntityNotFoundException("Käfig 99 in Schau 1 nicht gefunden"));

        mockMvc.perform(get("/v1/schauen/1/anmeldungen/kaefig/99"))
                .andExpect(status().isNotFound());
    }

    @Test
    void anmelden_returns201() throws Exception {
        SchauanmeldungRequestDTO request = new SchauanmeldungRequestDTO(
                10L, 5L, Geschlecht.MAENNLICH, "DWV-25-001", 2025
        );
        when(anmeldungService.anmelden(eq(1L), any())).thenReturn(responseDTO());

        mockMvc.perform(post("/v1/schauen/1/anmeldungen")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.id").value(100));
    }

    @Test
    void anmelden_returns422BeiFehlenderPflichtfelder() throws Exception {
        mockMvc.perform(post("/v1/schauen/1/anmeldungen")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{}"))
                .andExpect(status().isUnprocessableEntity());
    }

    @Test
    void platzierungEingeben_returns200() throws Exception {
        PlatzierungResponseDTO platzierung = new PlatzierungResponseDTO(
                100L, 1, 2, Medaille.GOLD
        );
        when(anmeldungService.platzierungEingeben(1L, 1, 2)).thenReturn(platzierung);

        mockMvc.perform(patch("/v1/schauen/1/anmeldungen/kaefig/1/platzierung/2"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.platzierung").value(2))
                .andExpect(jsonPath("$.medaille").value("GOLD"));
    }
}
