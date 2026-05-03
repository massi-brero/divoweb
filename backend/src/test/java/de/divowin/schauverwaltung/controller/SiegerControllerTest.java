package de.divowin.schauverwaltung.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import de.divowin.schauverwaltung.dto.*;
import de.divowin.schauverwaltung.service.SiegerService;
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

@WebMvcTest(value = SiegerController.class,
        excludeAutoConfiguration = SecurityAutoConfiguration.class)
@MockBean(JpaMetamodelMappingContext.class)
class SiegerControllerTest {

    @Autowired MockMvc mockMvc;
    @Autowired ObjectMapper objectMapper;
    @MockBean SiegerService siegerService;

    private SiegerResponseDTO responseDTO() {
        return new SiegerResponseDTO(
                50L, "Schausieger", 1, 10L,
                "Mustermann", "Max", 7, "WP/GR/DU",
                "Ehrenpreis", true
        );
    }

    @Test
    void siegerListe_returns200() throws Exception {
        when(siegerService.siegerListe(1L)).thenReturn(List.of(responseDTO()));

        mockMvc.perform(get("/v1/schauen/1/sieger"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].kategorie").value("Schausieger"))
                .andExpect(jsonPath("$[0].zuecherNachname").value("Mustermann"))
                .andExpect(jsonPath("$[0].kaefigNummer").value(7));
    }

    @Test
    void eintragen_returns201() throws Exception {
        SiegerRequestDTO request = new SiegerRequestDTO(
                "Schausieger", 1, 10L, 100L, "Ehrenpreis", true
        );
        when(siegerService.eintragen(eq(1L), any())).thenReturn(responseDTO());

        mockMvc.perform(post("/v1/schauen/1/sieger")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.id").value(50));
    }

    @Test
    void eintragen_returns422BeiFehlenderKategorie() throws Exception {
        SiegerRequestDTO ungueltig = new SiegerRequestDTO(
                "", 1, 10L, null, null, true
        );

        mockMvc.perform(post("/v1/schauen/1/sieger")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(ungueltig)))
                .andExpect(status().isUnprocessableEntity());
    }

    @Test
    void loeschen_returns204() throws Exception {
        doNothing().when(siegerService).loeschen(1L, 50L);

        mockMvc.perform(delete("/v1/schauen/1/sieger/50"))
                .andExpect(status().isNoContent());

        verify(siegerService).loeschen(1L, 50L);
    }

    @Test
    void loeschen_returns404WennNichtGefunden() throws Exception {
        doThrow(new EntityNotFoundException("Sieger nicht gefunden: 99"))
                .when(siegerService).loeschen(1L, 99L);

        mockMvc.perform(delete("/v1/schauen/1/sieger/99"))
                .andExpect(status().isNotFound());
    }

    @Test
    void loeschen_returns400WennSiegerZuAndererSchau() throws Exception {
        doThrow(new IllegalArgumentException("Sieger 50 gehört nicht zu Schau 2"))
                .when(siegerService).loeschen(2L, 50L);

        mockMvc.perform(delete("/v1/schauen/2/sieger/50"))
                .andExpect(status().isBadRequest());
    }
}
