import {
  ausstellerErgebnisseMock,
  getAusstellerErgebnisse,
  getVoegelJeAussteller,
  voegelJeAusstellerMock,
} from '../services/ausstellerService.js'

const tabButtons = document.querySelectorAll('[data-tab-target]')
const tabPanels = document.querySelectorAll('.tab-panel')
const toastContainer = document.getElementById('toastContainer')

tabButtons.forEach((button) => {
  button.addEventListener('click', () => openTab(button.dataset.tabTarget))
})

document.getElementById('loadResultsButton').addEventListener('click', loadResults)
document.getElementById('loadBirdsButton').addEventListener('click', loadBirds)
document.getElementById('sampleResultsButton').addEventListener('click', () => {
  renderResults(ausstellerErgebnisseMock)
})
document.getElementById('sampleBirdsButton').addEventListener('click', () => {
  renderBirds(voegelJeAusstellerMock)
})

function openTab(targetId) {
  tabButtons.forEach((button) => {
    button.classList.toggle('is-active', button.dataset.tabTarget === targetId)
  })
  tabPanels.forEach((panel) => {
    panel.classList.toggle('is-active', panel.id === targetId)
  })
}

async function loadResults() {
  const schauId = document.getElementById('schauIdErgebnis').value

  if (!schauId) {
    showToast('Bitte eine Schau-ID eingeben.', 'error')
    return
  }

  try {
    renderResults(await getAusstellerErgebnisse(schauId))
    showToast('Ausstellerübersicht wurde geladen.', 'success')
  } catch (error) {
    showToast(error.message || 'Ausstellerübersicht konnte nicht geladen werden.', 'error')
  }
}

async function loadBirds() {
  const schauId = document.getElementById('schauIdBirds').value
  const verband = document.getElementById('verband').value
  const verbandsnummer = document.getElementById('verbandsnummer').value.trim()

  if (!schauId || !verbandsnummer) {
    showToast('Bitte Schau-ID und Verbandsnummer eingeben.', 'error')
    return
  }

  try {
    renderBirds(await getVoegelJeAussteller(schauId, verband, verbandsnummer))
    showToast('Vögel des Ausstellers wurden geladen.', 'success')
  } catch (error) {
    showToast(error.message || 'Ausstellerdaten konnten nicht geladen werden.', 'error')
  }
}

function renderResults(items = []) {
  const tableBody = document.getElementById('resultsTableBody')

  tableBody.innerHTML = items.length
    ? items.map((item) => `
      <tr>
        <td>${escapeHtml(item.verbandsnummer)}</td>
        <td>${escapeHtml(item.name)}</td>
        <td>${escapeHtml(item.verband)}</td>
        <td>${renderPlatzierung(item.plaetze)}</td>
        <td>${renderMedalCount('gold', item.gold)}</td>
        <td>${renderMedalCount('silber', item.silber)}</td>
        <td>${renderMedalCount('bronze', item.bronze)}</td>
        <td><strong>${toNumber(item.punkte)}</strong></td>
      </tr>
    `).join('')
    : '<tr><td colspan="8">Keine Aussteller gefunden.</td></tr>'
}

function renderBirds(data = {}) {
  const aussteller = data.aussteller ?? {}
  const voegel = data.voegel ?? []
  const summary = document.getElementById('breederSummary')

  summary.hidden = false
  summary.innerHTML = `Aktueller Aussteller: <strong>${escapeHtml(aussteller.name)}</strong> · ${escapeHtml(aussteller.verband)} ${escapeHtml(aussteller.verbandsnummer)} · ${toNumber(aussteller.punkte)} Punkte`

  document.getElementById('birdsTableBody').innerHTML = voegel.length
    ? voegel.map((vogel) => `
      <tr>
        <td>${toNumber(vogel.kaefigNummer)}</td>
        <td>${escapeHtml(vogel.schauklasse)}</td>
        <td>${escapeHtml(vogel.farbbezeichnung)}</td>
        <td>${escapeHtml(vogel.geschlecht)}</td>
        <td>${renderPlatzierung(vogel.platzierung)}</td>
        <td>${renderMedaille(vogel.medaille)}</td>
        <td><strong>${toNumber(vogel.punkte)}</strong></td>
      </tr>
    `).join('')
    : '<tr><td colspan="7">Keine Vögel gefunden.</td></tr>'
}

function renderPlatzierung(platzierung) {
  if (!platzierung) {
    return '<span class="medal-badge medal-badge--plain">—</span>'
  }

  return `
    <span class="placing-badge" aria-label="Platzierung ${escapeHtml(platzierung)}">
      ${renderLaurel('')}
      <span class="placing-badge__number">${escapeHtml(platzierung)}</span>
      ${renderLaurel(' placing-badge__laurel--right')}
    </span>
  `
}

function renderMedaille(medaille) {
  const value = String(medaille ?? '').trim()

  if (!value) {
    return '<span class="medal-badge medal-badge--plain">—</span>'
  }

  const className = {
    gold: 'medal-badge--gold',
    silber: 'medal-badge--silver',
    bronze: 'medal-badge--bronze',
  }[value.toLowerCase()] ?? 'medal-badge--plain'

  return `
    <span class="medal-badge ${className}">
      <span class="medal-badge__icon" aria-hidden="true"></span>
      <span>${escapeHtml(value)}</span>
    </span>
  `
}

function renderMedalCount(type, value) {
  const count = toNumber(value)
  const className = {
    gold: 'medal-badge--gold',
    silber: 'medal-badge--silver',
    bronze: 'medal-badge--bronze',
  }[type] ?? 'medal-badge--plain'

  return `
    <span class="medal-badge ${className}" aria-label="${escapeHtml(type)}: ${count}">
      <span class="medal-badge__icon" aria-hidden="true"></span>
      <span>${count}</span>
    </span>
  `
}

function renderLaurel(extraClass = '') {
  return `
    <svg class="placing-badge__laurel${extraClass}" viewBox="0 0 18 22" aria-hidden="true" focusable="false">
      <path d="M15 2C9 4 5.5 8.5 4 14.5" />
      <path d="M10.8 5.1 7.2 7.2" />
      <path d="M12.1 8.4 7.9 10.3" />
      <path d="M12 12 7.8 13.6" />
      <path d="M11 15.5 7 16.8" />
      <path d="M9.4 18.7 5.8 19.4" />
    </svg>
  `
}

function showToast(message, type) {
  const toast = document.createElement('div')
  toast.className = `toast toast--${type} toast--visible`
  toast.textContent = message
  toastContainer.append(toast)
  window.setTimeout(() => toast.remove(), 3500)
}

function escapeHtml(value) {
  return String(value ?? '—').replace(/[&<>"']/g, (character) => ({
    '&': '&amp;',
    '<': '&lt;',
    '>': '&gt;',
    '"': '&quot;',
    "'": '&#039;',
  })[character])
}

function toNumber(value) {
  return Number.isFinite(Number(value)) ? Number(value) : 0
}
