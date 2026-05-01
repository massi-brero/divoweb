package de.divowin.schauverwaltung.controller;

import de.divowin.schauverwaltung.service.MedaillenService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.jpa.mapping.JpaMetamodelMappingContext;
import org.springframework.test.web.servlet.MockMvc;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(value = MedaillenController.class,
        excludeAutoConfiguration = SecurityAutoConfiguration.class)
@MockBean(JpaMetamodelMappingContext.class)
class MedaillenControllerTest {

    @Autowired MockMvc mockMvc;
    @MockBean MedaillenService medaillenService;

    @Test
    void berechnen_returns204() throws Exception {
        doNothing().when(medaillenService).berechneMedaillenFuerSchau(1L);

        mockMvc.perform(post("/v1/schauen/1/medaillen/berechnen"))
                .andExpect(status().isNoContent());

        verify(medaillenService).berechneMedaillenFuerSchau(1L);
    }

    @Test
    void berechnen_returns204AuchBeiLeererSchau() throws Exception {
        doNothing().when(medaillenService).berechneMedaillenFuerSchau(42L);

        mockMvc.perform(post("/v1/schauen/42/medaillen/berechnen"))
                .andExpect(status().isNoContent());
    }
}
