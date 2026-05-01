package de.divowin.schauverwaltung.entity;

import de.divowin.schauverwaltung.enums.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;

import static org.assertj.core.api.Assertions.*;

class SchauanmeldungTest {

    private Schauanmeldung anmeldung;

    @BeforeEach
    void setUp() {
        anmeldung = new Schauanmeldung();
        anmeldung.setEingeliefert(true);
        anmeldung.setPlatzierungskennzeichen(Platzierungskennzeichen.NORMAL);
        anmeldung.setMedaille(Medaille.KEINE);
        anmeldung.setGeschlecht(Geschlecht.MAENNLICH);
        anmeldung.setKaefigNummer(1);
    }

    // ── isGewertet ───────────────────────────────────────────────────────────

    @Test
    void isGewertet_trueWennEingeliefertUndNormal() {
        assertThat(anmeldung.isGewertet()).isTrue();
    }

    @Test
    void isGewertet_falseWennNichtEingeliefert() {
        anmeldung.setEingeliefert(false);
        assertThat(anmeldung.isGewertet()).isFalse();
    }

    @Test
    void isGewertet_falseWennFalscheKlasse() {
        anmeldung.setPlatzierungskennzeichen(Platzierungskennzeichen.FALSCHE_KLASSE);
        assertThat(anmeldung.isGewertet()).isFalse();
    }

    @Test
    void isGewertet_falseWennNichtEingeliefertUndFK() {
        anmeldung.setEingeliefert(false);
        anmeldung.setPlatzierungskennzeichen(Platzierungskennzeichen.FALSCHE_KLASSE);
        assertThat(anmeldung.isGewertet()).isFalse();
    }

    // ── berechnePunkteGesamt ──────────────────────────────────────────────────

    @Test
    void berechnePunkteGesamt_summiertAlleTeilpunkte() {
        anmeldung.setPunktePlatz(new BigDecimal("10.0000"));
        anmeldung.setPunkteSchaugruppe(new BigDecimal("5.0000"));
        anmeldung.setPunkteGruppensieger(new BigDecimal("3.0000"));
        anmeldung.setPunkteSchwerpunktfarbe(new BigDecimal("2.0000"));

        anmeldung.berechnePunkteGesamt();

        assertThat(anmeldung.getPunkteGesamt()).isEqualByComparingTo("20.0000");
    }

    @Test
    void berechnePunkteGesamt_ignoriertNullFelder() {
        anmeldung.setPunktePlatz(new BigDecimal("10.0000"));
        // alle anderen null

        anmeldung.berechnePunkteGesamt();

        assertThat(anmeldung.getPunkteGesamt()).isEqualByComparingTo("10.0000");
    }

    @Test
    void berechnePunkteGesamt_gibtNullZurueckWennAllesNull() {
        anmeldung.berechnePunkteGesamt();

        assertThat(anmeldung.getPunkteGesamt()).isEqualByComparingTo(BigDecimal.ZERO);
    }
}

class StandgeldTest {

    private Standgeld standgeld;

    @BeforeEach
    void setUp() {
        standgeld = new Standgeld();
        standgeld.setStandgeldProVogel(new BigDecimal("2.50"));
    }

    @Test
    void berechnen_multipliziert_eingeliefertMitSatz() {
        standgeld.setAnzahlEingeliefert(4);

        standgeld.berechnen();

        assertThat(standgeld.getGesamtbetrag()).isEqualByComparingTo("10.00");
    }

    @Test
    void berechnen_gibtNullBeiKeinenVoegeln() {
        standgeld.setAnzahlEingeliefert(0);

        standgeld.berechnen();

        assertThat(standgeld.getGesamtbetrag()).isEqualByComparingTo(BigDecimal.ZERO);
    }

    @Test
    void berechnen_NE_VoegelZaehlenNicht() {
        // 3 gemeldet, nur 1 eingeliefert
        standgeld.setAnzahlGemeldet(3);
        standgeld.setAnzahlEingeliefert(1);

        standgeld.berechnen();

        assertThat(standgeld.getGesamtbetrag()).isEqualByComparingTo("2.50");
    }
}

class VogelklasseTest {

    private Vogelklasse vogelklasse;

    @BeforeEach
    void setUp() {
        vogelklasse = new Vogelklasse();
        vogelklasse.setSkl1("WP");
        vogelklasse.setFarbe1("Grau");
    }

    // ── getKlassenschluessel ──────────────────────────────────────────────────

    @Test
    void getKlassenschluessel_nurSkl1() {
        assertThat(vogelklasse.getKlassenschluessel()).isEqualTo("WP");
    }

    @Test
    void getKlassenschluessel_mitSkl2() {
        vogelklasse.setSkl2("GR");
        assertThat(vogelklasse.getKlassenschluessel()).isEqualTo("WP/GR");
    }

    @Test
    void getKlassenschluessel_mitAllenDreiTeilen() {
        vogelklasse.setSkl2("GR");
        vogelklasse.setSkl3("DU");
        assertThat(vogelklasse.getKlassenschluessel()).isEqualTo("WP/GR/DU");
    }

    @Test
    void getKlassenschluessel_leereSkl2WirdIgnoriert() {
        vogelklasse.setSkl2("  ");
        assertThat(vogelklasse.getKlassenschluessel()).isEqualTo("WP");
    }

    // ── getFarbbezeichnung ────────────────────────────────────────────────────

    @Test
    void getFarbbezeichnung_nurFarbe1() {
        assertThat(vogelklasse.getFarbbezeichnung()).isEqualTo("Grau");
    }

    @Test
    void getFarbbezeichnung_kombiniertBeideFarben() {
        vogelklasse.setFarbe2("Dunkel");
        assertThat(vogelklasse.getFarbbezeichnung()).isEqualTo("Grau Dunkel");
    }

    @Test
    void getFarbbezeichnung_leereFarbe2WirdIgnoriert() {
        vogelklasse.setFarbe2("   ");
        assertThat(vogelklasse.getFarbbezeichnung()).isEqualTo("Grau");
    }
}

class ZuecherTest {

    private Zuecher zuecher;

    @BeforeEach
    void setUp() {
        zuecher = new Zuecher();
        zuecher.setNachname("Mustermann");
        zuecher.setVorname("Max");
    }

    @Test
    void getVollname_mitVorname() {
        assertThat(zuecher.getVollname()).isEqualTo("Mustermann, Max");
    }

    @Test
    void getVollname_ohneVorname() {
        zuecher.setVorname(null);
        assertThat(zuecher.getVollname()).isEqualTo("Mustermann");
    }

    @Test
    void getVollname_leerenVornameWirdIgnoriert() {
        zuecher.setVorname("   ");
        assertThat(zuecher.getVollname()).isEqualTo("Mustermann");
    }
}

class RichterTest {

    private Richter richter;

    @BeforeEach
    void setUp() {
        richter = new Richter();
        richter.setNachname("Schmidt");
        richter.setVorname("Hans");
    }

    @Test
    void getVollname_mitVorname() {
        assertThat(richter.getVollname()).isEqualTo("Hans Schmidt");
    }

    @Test
    void getVollname_ohneVorname() {
        richter.setVorname(null);
        assertThat(richter.getVollname()).isEqualTo("Schmidt");
    }

    @Test
    void getVollname_leerenVornameWirdIgnoriert() {
        richter.setVorname("  ");
        assertThat(richter.getVollname()).isEqualTo("Schmidt");
    }
}
