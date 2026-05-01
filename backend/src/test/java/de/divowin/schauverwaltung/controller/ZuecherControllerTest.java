package de.divowin.schauverwaltung.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import de.divowin.schauverwaltung.dto.ZuecherRequestDTO;
import de.divowin.schauverwaltung.dto.ZuecherResponseDTO;
import de.divowin.schauverwaltung.enums.Verband;
import de.divowin.schauverwaltung.service.ZuecherService;
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

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(value = ZuecherController.class, excludeAutoConfiguration = SecurityAutoConfiguration.class)
@MockBean(JpaMetamodelMappingContext.class)
class ZuecherControllerTest {

    @Autowired MockMvc mockMvc;
    @Autowired ObjectMapper objectMapper;
    @MockBean ZuecherService zuecherService;

    private ZuecherResponseDTO responseDTO() {
        return new ZuecherResponseDTO(
                1L, "10294", Verband.DWV, "Mustermann", "Max",
                "Mustermann, Max", "Musterstr. 1", "90402",
                "Nürnberg", "D", "0911-123", true
        );
    }

    private ZuecherRequestDTO requestDTO() {
        return new ZuecherRequestDTO(
                "10294", Verband.DWV, "Mustermann", "Max",
                "Musterstr. 1", "90402", "Nürnberg", "D", "0911-123", true
        );
    }

    @Test
    void alle_returns200MitListe() throws Exception {
        when(zuecherService.alleZuecher()).thenReturn(List.of(responseDTO()));

        mockMvc.perform(get("/v1/zuecher"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].nachname").value("Mustermann"))
                .andExpect(jsonPath("$[0].verbandsnummer").value("10294"));
    }

    @Test
    void byId_returns200() throws Exception {
        when(zuecherService.zuecherById(1L)).thenReturn(responseDTO());

        mockMvc.perform(get("/v1/zuecher/1"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.vollname").value("Mustermann, Max"));
    }

    @Test
    void byId_returns404WennNichtGefunden() throws Exception {
        when(zuecherService.zuecherById(99L))
                .thenThrow(new EntityNotFoundException("Züchter nicht gefunden: 99"));

        mockMvc.perform(get("/v1/zuecher/99"))
                .andExpect(status().isNotFound());
    }

    @Test
    void suche_returns200MitErgebnissen() throws Exception {
        when(zuecherService.sucheNachNachname("Must")).thenReturn(List.of(responseDTO()));

        mockMvc.perform(get("/v1/zuecher/suche").param("name", "Must"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].nachname").value("Mustermann"));

        verify(zuecherService).sucheNachNachname("Must");
    }

    @Test
    void anlegen_returns201() throws Exception {
        when(zuecherService.anlegen(any())).thenReturn(responseDTO());

        mockMvc.perform(post("/v1/zuecher")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(requestDTO())))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.id").value(1));
    }

    @Test
    void anlegen_returns422BeiFehlenderVerbandsnummer() throws Exception {
        ZuecherRequestDTO ungueltig = new ZuecherRequestDTO(
                "", Verband.DWV, "Mustermann", null,
                null, null, null, null, null, false
        );

        mockMvc.perform(post("/v1/zuecher")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(ungueltig)))
                .andExpect(status().isUnprocessableEntity());
    }

    @Test
    void aktualisieren_returns200() throws Exception {
        when(zuecherService.aktualisieren(eq(1L), any())).thenReturn(responseDTO());

        mockMvc.perform(put("/v1/zuecher/1")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(requestDTO())))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.verband").value("DWV"));
    }
}
