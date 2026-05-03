package de.divowin.schauverwaltung.enums;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

import static org.assertj.core.api.Assertions.*;

class MedailleTest {

    // ── berechnen ────────────────────────────────────────────────────────────

    @ParameterizedTest(name = "{0} Vögel, {1} Züchter → {2}")
    @CsvSource({
        "7,  2, GOLD",
        "10, 3, GOLD",
        "5,  2, SILBER",
        "6,  2, SILBER",
        "3,  2, BRONZE",
        "4,  2, BRONZE",
        "2,  2, KEINE",
        "1,  2, KEINE",
        "7,  1, KEINE",    // nur 1 Züchter → keine Medaille
        "10, 1, KEINE",
        "0,  0, KEINE"
    })
    void berechnen_gibtKorrekteMedaille(int voegel, int zuechter, String erwartet) {
        assertThat(Medaille.berechnen(voegel, zuechter))
                .isEqualTo(Medaille.valueOf(erwartet));
    }

    // ── vonAltCode ────────────────────────────────────────────────────────────

    @Test void vonAltCode_G_gibtGold()   { assertThat(Medaille.vonAltCode("G")).isEqualTo(Medaille.GOLD); }
    @Test void vonAltCode_S_gibtSilber() { assertThat(Medaille.vonAltCode("S")).isEqualTo(Medaille.SILBER); }
    @Test void vonAltCode_B_gibtBronze() { assertThat(Medaille.vonAltCode("B")).isEqualTo(Medaille.BRONZE); }
    @Test void vonAltCode_null_gibtKeine() { assertThat(Medaille.vonAltCode(null)).isEqualTo(Medaille.KEINE); }
    @Test void vonAltCode_unbekannt_gibtKeine() { assertThat(Medaille.vonAltCode("X")).isEqualTo(Medaille.KEINE); }

    // ── Getter ────────────────────────────────────────────────────────────────

    @Test
    void gold_hatKorrekteMindestwerte() {
        assertThat(Medaille.GOLD.getMinVoegel()).isEqualTo(7);
        assertThat(Medaille.GOLD.getMinZuechter()).isEqualTo(2);
        assertThat(Medaille.GOLD.getAltCode()).isEqualTo("G");
    }
}

class GeschlechtTest {

    @Test void vonAltCode_M_gibtMaennlich() { assertThat(Geschlecht.vonAltCode("M")).isEqualTo(Geschlecht.MAENNLICH); }
    @Test void vonAltCode_W_gibtWeiblich()  { assertThat(Geschlecht.vonAltCode("W")).isEqualTo(Geschlecht.WEIBLICH); }
    @Test void vonAltCode_U_gibtUnbekannt() { assertThat(Geschlecht.vonAltCode("U")).isEqualTo(Geschlecht.UNBEKANNT); }
    @Test void vonAltCode_null_gibtUnbekannt()    { assertThat(Geschlecht.vonAltCode(null)).isEqualTo(Geschlecht.UNBEKANNT); }
    @Test void vonAltCode_unbekannt_gibtUnbekannt(){ assertThat(Geschlecht.vonAltCode("X")).isEqualTo(Geschlecht.UNBEKANNT); }

    @Test
    void vonAltCode_caseInsensitive() {
        assertThat(Geschlecht.vonAltCode("m")).isEqualTo(Geschlecht.MAENNLICH);
        assertThat(Geschlecht.vonAltCode("w")).isEqualTo(Geschlecht.WEIBLICH);
    }

    @Test
    void getBezeichnung_istNichtLeer() {
        for (Geschlecht g : Geschlecht.values()) {
            assertThat(g.getBezeichnung()).isNotBlank();
        }
    }
}

class PlatzierungskennzeichenTest {

    @Test void vonAltCode_NE_gibtNichtEingeliefert() {
        assertThat(Platzierungskennzeichen.vonAltCode("NE"))
                .isEqualTo(Platzierungskennzeichen.NICHT_EINGELIEFERT);
    }

    @Test void vonAltCode_FK_gibtFalscheKlasse() {
        assertThat(Platzierungskennzeichen.vonAltCode("FK"))
                .isEqualTo(Platzierungskennzeichen.FALSCHE_KLASSE);
    }

    @Test void vonAltCode_null_gibtNormal()  { assertThat(Platzierungskennzeichen.vonAltCode(null)).isEqualTo(Platzierungskennzeichen.NORMAL); }
    @Test void vonAltCode_leer_gibtNormal()  { assertThat(Platzierungskennzeichen.vonAltCode("")).isEqualTo(Platzierungskennzeichen.NORMAL); }
    @Test void vonAltCode_blank_gibtNormal() { assertThat(Platzierungskennzeichen.vonAltCode("  ")).isEqualTo(Platzierungskennzeichen.NORMAL); }

    @Test void vonAltCode_caseInsensitive() {
        assertThat(Platzierungskennzeichen.vonAltCode("ne")).isEqualTo(Platzierungskennzeichen.NICHT_EINGELIEFERT);
        assertThat(Platzierungskennzeichen.vonAltCode("fk")).isEqualTo(Platzierungskennzeichen.FALSCHE_KLASSE);
    }

    @Test void normal_hatNullAltCode() {
        assertThat(Platzierungskennzeichen.NORMAL.getAltCode()).isNull();
    }
}

class SchautypTest {

    @Test void vonKuerzel_B_gibtBundesschau()  { assertThat(Schautyp.vonKuerzel("B")).isEqualTo(Schautyp.BUNDESSCHAU); }
    @Test void vonKuerzel_M_gibtMeisterschau() { assertThat(Schautyp.vonKuerzel("M")).isEqualTo(Schautyp.MEISTERSCHAU); }
    @Test void vonKuerzel_L_gibtLandesschau()  { assertThat(Schautyp.vonKuerzel("L")).isEqualTo(Schautyp.LANDESSCHAU); }
    @Test void vonKuerzel_V_gibtVereinsschau() { assertThat(Schautyp.vonKuerzel("V")).isEqualTo(Schautyp.VEREINSSCHAU); }
    @Test void vonKuerzel_E_gibtEuropaschau()  { assertThat(Schautyp.vonKuerzel("E")).isEqualTo(Schautyp.EUROPASCHAU); }
    @Test void vonKuerzel_C_gibtClubschau()    { assertThat(Schautyp.vonKuerzel("C")).isEqualTo(Schautyp.CLUBSCHAU); }

    @Test void vonKuerzel_caseInsensitive() {
        assertThat(Schautyp.vonKuerzel("m")).isEqualTo(Schautyp.MEISTERSCHAU);
        assertThat(Schautyp.vonKuerzel("b")).isEqualTo(Schautyp.BUNDESSCHAU);
    }

    @Test void vonKuerzel_unbekannt_wirftException() {
        assertThatThrownBy(() -> Schautyp.vonKuerzel("X"))
                .isInstanceOf(IllegalArgumentException.class)
                .hasMessageContaining("X");
    }

    @Test void alleSchautypenHabenBezeichnung() {
        for (Schautyp t : Schautyp.values()) {
            assertThat(t.getBezeichnung()).isNotBlank();
            assertThat(t.getKuerzel()).isNotBlank();
        }
    }
}

class VerbandTest {

    @Test void vonKuerzel_DWV()  { assertThat(Verband.vonKuerzel("DWV")).isEqualTo(Verband.DWV); }
    @Test void vonKuerzel_AZ()   { assertThat(Verband.vonKuerzel("AZ")).isEqualTo(Verband.AZ); }
    @Test void vonKuerzel_OWV_mitUmlaut() {
        // Original-Kürzel mit Umlaut
        assertThat(Verband.vonKuerzel("ÖWV")).isEqualTo(Verband.OWV);
    }
    @Test void vonKuerzel_caseInsensitive() {
        assertThat(Verband.vonKuerzel("dwv")).isEqualTo(Verband.DWV);
    }
    @Test void vonKuerzel_null_gibtSonstige() {
        assertThat(Verband.vonKuerzel(null)).isEqualTo(Verband.SONSTIGE);
    }
    @Test void vonKuerzel_leer_gibtSonstige() {
        assertThat(Verband.vonKuerzel("")).isEqualTo(Verband.SONSTIGE);
    }
    @Test void vonKuerzel_unbekannt_gibtSonstige() {
        assertThat(Verband.vonKuerzel("XYZ")).isEqualTo(Verband.SONSTIGE);
    }

    @Test void alleVerbaendeHabenKuerzelUndVollname() {
        for (Verband v : Verband.values()) {
            assertThat(v.getKuerzel()).isNotBlank();
            assertThat(v.getVollname()).isNotBlank();
        }
    }
}
