package de.divowin.schauverwaltung.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import de.divowin.schauverwaltung.dto.*;
import de.divowin.schauverwaltung.entity.Schau;
import de.divowin.schauverwaltung.enums.Schautyp;
import de.divowin.schauverwaltung.enums.Verband;
import de.divowin.schauverwaltung.service.SchauService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.jpa.mapping.JpaMetamodelMappingContext;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.math.BigDecimal;
import java.util.List;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(value = SchauController.class, excludeAutoConfiguration = SecurityAutoConfiguration.class)
@MockBean(JpaMetamodelMappingContext.class)
class SchauControllerTest {

    @Autowired MockMvc mockMvc;
    @Autowired ObjectMapper objectMapper;
    @MockBean SchauService schauService;

    private SchauDTO schauDTO() {
        return new SchauDTO(
                1L, Schautyp.MEISTERSCHAU, 2025, "Nürnberg", Verband.DWV,
                new BigDecimal("2.50"), Schau.Schaustatus.VORBEREITUNG,
                null, "Meisterschau Nürnberg 2025", List.of()
        );
    }

    @Test
    void alleSchauen_returns200MitListe() throws Exception {
        when(schauService.alleSchauen()).thenReturn(List.of(schauDTO()));

        mockMvc.perform(get("/v1/schauen"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].id").value(1))
                .andExpect(jsonPath("$[0].ort").value("Nürnberg"))
                .andExpect(jsonPath("$[0].schautyp").value("MEISTERSCHAU"));
    }

    @Test
    void alleSchauen_returns200MitLeererListe() throws Exception {
        when(schauService.alleSchauen()).thenReturn(List.of());

        mockMvc.perform(get("/v1/schauen"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isEmpty());
    }

    @Test
    void schauenNachJahr_returns200() throws Exception {
        when(schauService.schauenNachJahr(2025)).thenReturn(List.of(schauDTO()));

        mockMvc.perform(get("/v1/schauen/jahr/2025"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].jahr").value(2025));

        verify(schauService).schauenNachJahr(2025);
    }

    @Test
    void schauById_returns200() throws Exception {
        when(schauService.schauById(1L)).thenReturn(schauDTO());

        mockMvc.perform(get("/v1/schauen/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.bezeichnung").value("Meisterschau Nürnberg 2025"));
    }

    @Test
    void schauAnlegen_returns201() throws Exception {
        SchauRequestDTO request = new SchauRequestDTO(
                Schautyp.MEISTERSCHAU, 2025, "Nürnberg", Verband.DWV,
                new BigDecimal("2.50"), null
        );
        when(schauService.schauAnlegen(any())).thenReturn(schauDTO());

        mockMvc.perform(post("/v1/schauen")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.id").value(1));
    }

    @Test
    void schauAnlegen_returns422BeiFehlenderPflichtfelder() throws Exception {
        // Leeres JSON – alle Pflichtfelder fehlen
        mockMvc.perform(post("/v1/schauen")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{}"))
                .andExpect(status().isUnprocessableEntity());
    }

    @Test
    void statusAendern_returns200() throws Exception {
        SchauDTO updated = new SchauDTO(
                1L, Schautyp.MEISTERSCHAU, 2025, "Nürnberg", Verband.DWV,
                new BigDecimal("2.50"), Schau.Schaustatus.ABGESCHLOSSEN,
                null, "Meisterschau Nürnberg 2025", List.of()
        );
        when(schauService.statusAendern(eq(1L), eq(Schau.Schaustatus.ABGESCHLOSSEN)))
                .thenReturn(updated);

        mockMvc.perform(patch("/v1/schauen/1/status/ABGESCHLOSSEN"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.status").value("ABGESCHLOSSEN"));
    }
}
