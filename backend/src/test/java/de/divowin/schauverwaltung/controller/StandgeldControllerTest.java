package de.divowin.schauverwaltung.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import de.divowin.schauverwaltung.dto.StandgeldDTO;
import de.divowin.schauverwaltung.service.StandgeldService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.jpa.mapping.JpaMetamodelMappingContext;
import org.springframework.test.web.servlet.MockMvc;

import java.math.BigDecimal;
import java.util.List;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(value = StandgeldController.class,
        excludeAutoConfiguration = SecurityAutoConfiguration.class)
@MockBean(JpaMetamodelMappingContext.class)
class StandgeldControllerTest {

    @Autowired MockMvc mockMvc;
    @MockBean StandgeldService standgeldService;

    private StandgeldDTO standgeldDTO() {
        return new StandgeldDTO(
                200L, 1L, 10L, "Mustermann", "Max",
                2, 1, new BigDecimal("2.50"), new BigDecimal("2.50"), false
        );
    }

    @Test
    void uebersicht_returns200MitListe() throws Exception {
        when(standgeldService.uebersichtFuerSchau(1L)).thenReturn(List.of(standgeldDTO()));

        mockMvc.perform(get("/v1/schauen/1/standgeld"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].zuecherNachname").value("Mustermann"))
                .andExpect(jsonPath("$[0].anzahlGemeldet").value(2))
                .andExpect(jsonPath("$[0].anzahlEingeliefert").value(1))
                .andExpect(jsonPath("$[0].bezahlt").value(false));
    }

    @Test
    void berechnen_returns200MitBerechneterListe() throws Exception {
        when(standgeldService.berechneStandgeldFuerSchau(1L)).thenReturn(List.of(standgeldDTO()));

        mockMvc.perform(post("/v1/schauen/1/standgeld/berechnen"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].gesamtbetrag").value(2.50));

        verify(standgeldService).berechneStandgeldFuerSchau(1L);
    }
}
