import {
  createZuechter,
  findZuechterByVerbandsnummer,
  updateZuechter,
} from "../services/zuechterService.js";
import {
  createAnmeldung,
  getAnmeldungen,
  getNaechsteKaefignummer,
} from "../services/vogelService.js";
import { lookupVogelklasse } from "../services/vogelklasseService.js";

const DEFAULT_SCHAU_ID = 1;

const state = {
  selectedBreeder: null,
  birds: [],
};
const tabButtons = document.querySelectorAll("[data-tab-target]");
const tabPanels = document.querySelectorAll(".tab-panel");
const breederForm = document.getElementById("breederForm");
const birdForm = document.getElementById("birdForm");

init();

function init() {
  bindTabs();
  bindBreederEvents();
  bindBirdEvents();
  loadNextCageNumber();
  loadBirds();
}

function bindTabs() {
  tabButtons.forEach((button) => {
    button.addEventListener("click", () =>
      activateTab(button.dataset.tabTarget),
    );
  });
}
function activateTab(tabId) {
  tabButtons.forEach((button) => {
    button.classList.toggle("is-active", button.dataset.tabTarget === tabId);
  });

  tabPanels.forEach((panel) => {
    panel.classList.toggle("is-active", panel.id === tabId);
  });
}

function bindBreederEvents() {
  document
    .getElementById("searchBreederButton")
    .addEventListener("click", searchBreederByVerbandsnummer);

  document
    .getElementById("newBreederButton")
    .addEventListener("click", resetBreederForm);
  document
    .getElementById("goBirdsButton")
    .addEventListener("click", () => activateTab("voegelTab"));

  document
    .getElementById("sampleBreederBirdsButton")
    .addEventListener("click", createSampleBreederData);

  breederForm.addEventListener("submit", saveBreeder);
}

function bindBirdEvents() {
  document
    .getElementById("determineColorButton")
    .addEventListener("click", determineColor);

  document
    .getElementById("newBirdButton")
    .addEventListener("click", resetBirdForm);
  document
    .getElementById("sampleBirdsButton")
    .addEventListener("click", createSampleBirdData);

  birdForm.addEventListener("submit", saveBird);
}

async function searchBreederByVerbandsnummer() {
  const verband = document.getElementById("searchVerband").value;
  const verbandsnummer = document
    .getElementById("searchVerbandsnummer")
    .value.trim();
  const hint = document.getElementById("breederSearchHint");
  if (!verbandsnummer) {
    hint.textContent = "Bitte eine Verbandsnummer eingeben.";
    showToast("Bitte eine Verbandsnummer eingeben.", "error");
    return;
  }

  try {
    const breeder = await findZuechterByVerbandsnummer(verband, verbandsnummer);
    if (!breeder) {
      hint.textContent = "Züchter nicht gefunden.";
      showConfirmToast("Züchter nicht gefunden, möchten Sie ihn neu anlegen?", {
        yesLabel: "Ja",
        noLabel: "Nein",
        onYes: () => prepareNewBreeder(verband, verbandsnummer),
        onNo: () => showToast("Neuanlage abgebrochen.", "info"),
      });
      return;
    }
    hint.textContent = "Züchter gefunden. Daten wurden übernommen.";
    fillBreederForm(breeder);
    selectBreeder(breeder);
    showToast("Züchter gefunden. Daten wurden übernommen.", "success");
  } catch (error) {
    console.error("Fehler bei der Züchtersuche:", error);
    showToast(
      error.message ||
        "Die Züchtersuche ist fehlgeschlagen. Bitte Backend prüfen.",
      "error",
    );
  }
}
function prepareNewBreeder(verband, verbandsnummer) {
  resetBreederForm();
  document.getElementById("verband").value = verband;
  document.getElementById("verbandsnummer").value = verbandsnummer;
  document.getElementById("nachname").focus();
  showToast("Züchter kann jetzt neu erfasst werden.", "success");
}

async function saveBreeder(event) {
  event.preventDefault();

  const errors = validateBreederForm();
  renderBreederErrors(errors);
  if (Object.keys(errors).length > 0) {
    showToast(
      "Bitte prüfen Sie die Pflichtfelder im Züchterformular.",
      "error",
    );
    return;
  }

  const breederId = document.getElementById("breederId").value;
  const payload = readBreederForm();

  try {
    const savedBreeder = breederId
      ? await updateZuechter(breederId, payload)
      : await createZuechter(payload);
    fillBreederForm(savedBreeder);
    selectBreeder(savedBreeder);
    document.getElementById("breederSearchHint").textContent =
      "Züchter wurde gespeichert.";
    showToast("Züchter wurde gespeichert.", "success");
  } catch (error) {
    console.error("Fehler beim Speichern des Züchters:", error);
    showToast(
      error.message || "Der Züchter konnte nicht gespeichert werden.",
      "error",
    );
  }
}
function readBreederForm() {
  return {
    verbandsnummer: document.getElementById("verbandsnummer").value.trim(),
    verband: document.getElementById("verband").value,
    nachname: document.getElementById("nachname").value.trim(),
    vorname: document.getElementById("vorname").value.trim(),
    strasse: document.getElementById("strasse").value.trim(),
    plz: document.getElementById("plz").value.trim(),
    wohnort: document.getElementById("wohnort").value.trim(),
    land: document.getElementById("land").value.trim(),
    telefon: document.getElementById("telefon").value.trim(),
    katalogEinverstaendnis: document.getElementById("katalogEinverstaendnis")
      .checked,
  };
}
function validateBreederForm() {
  const errors = {};

  if (!document.getElementById("verbandsnummer").value.trim()) {
    errors.verbandsnummer = "Bitte geben Sie die Verbandsnummer ein.";
  }

  if (!document.getElementById("verband").value) {
    errors.verband = "Bitte wählen Sie Verband oder Sparte aus.";
  }

  if (!document.getElementById("nachname").value.trim()) {
    errors.nachname = "Bitte geben Sie den Nachnamen ein.";
  }

  return errors;
}
function renderBreederErrors(errors) {
  ["verbandsnummer", "verband", "nachname"].forEach((fieldId) => {
    const field = document.getElementById(fieldId);
    const errorElement = document.querySelector(
      `[data-error-for="${fieldId}"]`,
    );
    const message = errors[fieldId] || "";

    field.classList.toggle("is-invalid", Boolean(message));
    errorElement.textContent = message;
  });
}
function fillBreederForm(breeder) {
  document.getElementById("breederId").value = breeder.id ?? "";
  document.getElementById("verbandsnummer").value =
    breeder.verbandsnummer ?? "";
  document.getElementById("verband").value = breeder.verband ?? "";
  document.getElementById("nachname").value = breeder.nachname ?? "";
  document.getElementById("vorname").value = breeder.vorname ?? "";
  document.getElementById("strasse").value = breeder.strasse ?? "";
  document.getElementById("plz").value = breeder.plz ?? "";
  document.getElementById("wohnort").value = breeder.wohnort ?? "";
  document.getElementById("land").value = breeder.land ?? "";
  document.getElementById("telefon").value = breeder.telefon ?? "";
  document.getElementById("katalogEinverstaendnis").checked = Boolean(
    breeder.katalogEinverstaendnis,
  );
}
function resetBreederForm() {
  breederForm.reset();
  document.getElementById("breederId").value = "";
  document.getElementById("land").value = "Deutschland";
  document.getElementById("breederSearchHint").textContent = "";
  state.selectedBreeder = null;
  document.getElementById("selectedBreederName").textContent =
    "Noch kein Züchter ausgewählt";
  document.getElementById("goBirdsButton").disabled = true;
  renderBreederErrors({});
}
function selectBreeder(breeder) {
  state.selectedBreeder = breeder;
  document.getElementById("selectedBreederName").textContent =
    getBreederDisplayName(breeder);
  document.getElementById("goBirdsButton").disabled = false;
}
async function loadNextCageNumber() {
  try {
    const nextNumber = await getNaechsteKaefignummer(DEFAULT_SCHAU_ID);
    document.getElementById("nextCageNumber").value = nextNumber;
  } catch (error) {
    console.warn("Nächste Käfignummer konnte nicht geladen werden:", error);
    document.getElementById("nextCageNumber").value = "—";
  }
}
async function loadBirds() {
  try {
    state.birds = await getAnmeldungen(DEFAULT_SCHAU_ID);
    renderBirds();
  } catch (error) {
    console.warn("Anmeldungen konnten nicht geladen werden:", error);
    state.birds = [];
    renderBirds();
  }
}

async function determineColor() {
  const skl1Input = document.getElementById("skl1");
  const skl2Input = document.getElementById("skl2");
  const skl3Input = document.getElementById("skl3");
  const farbbezeichnungInput = document.getElementById("farbbezeichnung");
  const vogelklasseIdInput = document.getElementById("vogelklasseId");
  const button = document.getElementById("determineColorButton");

  const skl1 = skl1Input.value.trim();
  const skl2 = skl2Input.value.trim();
  const skl3 = skl3Input.value.trim();

  farbbezeichnungInput.value = "";
  vogelklasseIdInput.value = "";

  if (!skl1) {
    showToast("Bitte mindestens SKL 1 eingeben.", "error");
    skl1Input.focus();
    return;
  }

  button.disabled = true;

  try {
    const vogelklasse = await lookupVogelklasse(skl1, skl2, skl3);

    vogelklasseIdInput.value = vogelklasse.id;
    farbbezeichnungInput.value = vogelklasse.farbbezeichnung ?? "";

    showToast(
      `Vogelklasse ${vogelklasse.klassenschluessel ?? `${skl1}/${skl2}/${skl3}`} wurde gefunden.`,
      "success",
    );
  } catch (error) {
    console.error("Fehler beim Ermitteln der Vogelklasse:", error);
    showToast(
      error.message || "Die Vogelklasse konnte nicht ermittelt werden.",
      "error",
    );
    skl1Input.focus();
  } finally {
    button.disabled = false;
  }
}

async function saveBird(event) {
  event.preventDefault();
  if (!state.selectedBreeder) {
    showToast("Bitte zuerst einen Züchter auswählen oder speichern.", "error");
    activateTab("zuechterTab");
    return;
  }

  const vogelklasseId = Number(document.getElementById("vogelklasseId").value);

  if (!vogelklasseId) {
    showToast(
      "Bitte zuerst über „Farbe bestimmen“ eine gültige Vogelklasse ermitteln.",
      "error",
    );
    return;
  }
  const payload = {
    zuecherId: state.selectedBreeder.id,
    vogelklasseId,
    geschlecht: document.getElementById("geschlecht").value,
    ringNummer: document.getElementById("ringNummer").value.trim(),
    zuchtjahr: toOptionalNumber(document.getElementById("zuchtjahr").value),
  };

  if (!payload.geschlecht) {
    showToast("Bitte wählen Sie das Geschlecht aus.", "error");
    return;
  }
  try {
    await createAnmeldung(DEFAULT_SCHAU_ID, payload);
    showToast("Vogel wurde gespeichert.", "success");
    resetBirdForm();
    await loadNextCageNumber();
    await loadBirds();
  } catch (error) {
    console.error("Fehler beim Speichern des Vogels:", error);
    showToast(
      error.message || "Der Vogel konnte nicht gespeichert werden.",
      "error",
    );
  }
}

function resetBirdForm() {
  birdForm.reset();
  document.getElementById("vogelklasseId").value = "";
  document.getElementById("farbbezeichnung").value = "";
}

function createSampleBreederData() {
  const sampleBreeder = {
    id: 1001,
    verbandsnummer: "1234",
    verband: "AZ",
    nachname: "Mustermann",
    vorname: "Max",
    strasse: "Musterstraße 12",
    plz: "76703",
    wohnort: "Kraichtal",
    land: "Deutschland",
    telefon: "07250 12345",
    katalogEinverstaendnis: true,
  };

  fillBreederForm(sampleBreeder);
  selectBreeder(sampleBreeder);
  document.getElementById("searchVerband").value = sampleBreeder.verband;
  document.getElementById("searchVerbandsnummer").value =
    sampleBreeder.verbandsnummer;

  showToast("Züchter-Testdaten wurden angelegt.", "success");
}

function createSampleBirdData() {
  document.getElementById("nextCageNumber").value = "4";
  document.getElementById("geschlecht").value = "MAENNLICH";
  document.getElementById("skl1").value = "10   ";
  document.getElementById("skl2").value = "10";
  document.getElementById("skl3").value = "";
  document.getElementById("vogelklasseId").value = "";
  document.getElementById("farbbezeichnung").value = "";
  document.getElementById("ringNummer").value = "AZ 1234 001";
  document.getElementById("zuchtjahr").value = new Date().getFullYear() - 1;

  state.birds = [
    {
      kaefigNummer: 1,
      geschlecht: "MAENNLICH",
      klassenschluessel: "25/1/-",
      farbbezeichnung: "Beispieldaten – nicht gespeichert",
      ringNummer: "AZ 1234 001",
      zuchtjahr: new Date().getFullYear() - 1,
    },
    {
      kaefigNummer: 2,
      geschlecht: "MAENNLICH",
      klassenschluessel: "15/5/-",
      farbbezeichnung: "Beispieldaten – nicht gespeichert",
      ringNummer: "AZ 1234 002",
      zuchtjahr: new Date().getFullYear() - 1,
    },
    {
      kaefigNummer: 3,
      geschlecht: "MAENNLICH",
      klassenschluessel: "11/3/-",
      farbbezeichnung: "Beispieldaten – nicht gespeichert",
      ringNummer: "AZ 1234 003",
      zuchtjahr: new Date().getFullYear(),
    },
  ];

  renderBirds();
  showToast(
    "Vogel-Testdaten wurden nur für die Ansicht angelegt. Bitte eine gültige Schauklasse eingeben und „Farbe bestimmen“ wählen.",
    "success",
  );
}

function renderBirds() {
  const tbody = document.getElementById("birdsTableBody");
  tbody.innerHTML = "";

  if (state.birds.length === 0) {
    tbody.innerHTML = '<tr><td colspan="6">Noch keine Vögel erfasst.</td></tr>';
    return;
  }
  state.birds.forEach((bird) => {
    const row = document.createElement("tr");
    row.innerHTML = `
      <td>${bird.kaefigNummer ?? bird.kaefigNr ?? ""}</td>
      <td>${bird.geschlecht ?? ""}</td>
      <td>${bird.klassenschluessel ?? bird.vogelklasse?.schluessel ?? ""}</td>
      <td>${bird.farbbezeichnung ?? bird.vogelklasse?.farbe1 ?? ""}</td>
      <td>${bird.ringNummer ?? ""}</td>
      <td>${bird.zuchtjahr ?? ""}</td>
    `;
    tbody.appendChild(row);
  });
}
function getBreederDisplayName(breeder) {
  return (
    breeder.vollname ||
    `${breeder.vorname ?? ""} ${breeder.nachname ?? ""}`.trim()
  );
}

function toOptionalNumber(value) {
  return value ? Number(value) : null;
}

function showToast(message, type = "success") {
  const toastContainer = document.getElementById("toastContainer");

  if (!toastContainer) {
    alert(message);
    return;
  }
  const toast = document.createElement("div");
  toast.className = `toast toast--${type}`;
  toast.textContent = message;
  toastContainer.appendChild(toast);

  window.setTimeout(() => {
    toast.classList.add("toast--visible");
  }, 10);

  window.setTimeout(() => {
    toast.classList.remove("toast--visible");
    window.setTimeout(() => toast.remove(), 250);
  }, 3500);
}

function showConfirmToast(message, options) {
  const toastContainer = document.getElementById("toastContainer");
  if (!toastContainer) {
    const confirmed = window.confirm(message);
    if (confirmed) {
      options.onYes?.();
    } else {
      options.onNo?.();
    }
    return;
  }
  const toast = document.createElement("div");
  toast.className = "toast toast--confirm";
  toast.innerHTML = `
    <div class="toast__message">${message}</div>
    <div class="toast__actions">
      <button class="toast__button toast__button--primary" type="button">${options.yesLabel ?? "Ja"}</button>
      <button class="toast__button" type="button">${options.noLabel ?? "Nein"}</button>
    </div>
  `;

  const [yesButton, noButton] = toast.querySelectorAll("button");
  yesButton.addEventListener("click", () => {
    toast.remove();
    options.onYes?.();
  });

  noButton.addEventListener("click", () => {
    toast.remove();
    options.onNo?.();
  });

  toastContainer.appendChild(toast);

  window.setTimeout(() => {
    toast.classList.add("toast--visible");
  }, 10);
}
