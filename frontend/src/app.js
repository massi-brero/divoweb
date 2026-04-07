const state = {
  judges: [],
  saved: false,
}

const form = document.getElementById('showForm')
const judgesList = document.getElementById('judgesList')
const judgeRowTemplate = document.getElementById('judgeRowTemplate')
const sampleDataButton = document.getElementById('sampleDataButton')
const addJudgeButton = document.getElementById('addJudgeButton')
const cancelButton = document.getElementById('cancelButton')
const startManagementButton = document.getElementById('startManagementButton')

const fieldIds = [
  'showNumber',
  'showType',
  'showYear',
  'showLocation',
  'association',
  'feePerBird',
]

init()

function init() {
  fillYearOptions()
  renderJudges()
  bindEvents()
  updateStartButtonState()
}

function bindEvents() {
  form.addEventListener('submit', onSubmit)
  sampleDataButton.addEventListener('click', fillSampleData)
  addJudgeButton.addEventListener('click', addEmptyJudge)
  cancelButton.addEventListener('click', resetForm)
  startManagementButton.addEventListener('click', onStartManagement)

  fieldIds.forEach((fieldId) => {
    const field = document.getElementById(fieldId)
    field.addEventListener('input', () => clearFieldError(fieldId))
    field.addEventListener('change', () => clearFieldError(fieldId))
  })
}

function fillYearOptions() {
  const yearSelect = document.getElementById('showYear')
  const currentYear = new Date().getFullYear()

  for (let year = currentYear - 1; year <= currentYear + 5; year += 1) {
    const option = document.createElement('option')
    option.value = String(year)
    option.textContent = String(year)
    yearSelect.appendChild(option)
  }
}

function renderJudges() {
  judgesList.innerHTML = ''

  if (state.judges.length === 0) {
    const empty = document.createElement('div')
    empty.className = 'empty-state'
    empty.innerHTML = `
      Noch keine Preisrichter hinzugefügt.<br />
      Klicken Sie auf "+" um einen Preisrichter hinzuzufügen.
    `
    judgesList.appendChild(empty)
    return
  }

  state.judges.forEach((judge, index) => {
    const fragment = judgeRowTemplate.content.cloneNode(true)
    const card = fragment.querySelector('.judge-card')
    const nameInput = fragment.querySelector('[data-judge-field="name"]')
    const associationSelect = fragment.querySelector(
      '[data-judge-field="association"]',
    )
    const deleteButton = fragment.querySelector('.delete-judge-button')

    nameInput.value = judge.name
    associationSelect.value = judge.association

    nameInput.addEventListener('input', (event) => {
      state.judges[index].name = event.target.value
    })

    associationSelect.addEventListener('change', (event) => {
      state.judges[index].association = event.target.value
    })

    deleteButton.addEventListener('click', () => {
      state.judges.splice(index, 1)
      renderJudges()
    })

    judgesList.appendChild(card)
  })
}

function addEmptyJudge() {
  state.judges.push({
    name: '',
    association: '',
  })

  renderJudges()
}

function fillSampleData() {
  document.getElementById('showNumber').value = '42'
  document.getElementById('showType').value = 'Landesschau'
  document.getElementById('showYear').value = '2026'
  document.getElementById('showLocation').value = 'Messehalle München'
  document.getElementById('association').value = 'AZ'
  document.getElementById('feePerBird').value = '8,50'

  state.judges = [
    { name: 'Hans Müller', association: 'AZ' },
    { name: 'Petra Schmidt', association: 'DKB' },
    { name: 'Klaus Weber', association: 'AZ' },
  ]

  fieldIds.forEach(clearFieldError)
  renderJudges()
}

function resetForm() {
  form.reset()
  state.judges = []
  state.saved = false
  fieldIds.forEach(clearFieldError)
  renderJudges()
  updateStartButtonState()
}

function onSubmit(event) {
  event.preventDefault()

  const data = readFormData()
  const errors = validateFormData(data)

  renderErrors(errors)

  if (Object.keys(errors).length > 0) {
    return
  }

  state.saved = true
  updateStartButtonState()

  console.log('Schau gespeichert:', {
    ...data,
    judges: state.judges,
  })

  alert('Die Schau wurde gespeichert.')
}

function onStartManagement() {
  if (!state.saved) {
    alert('Bitte speichern Sie zuerst die Schaudaten.')
    return
  }

  alert('Schauverwaltung wird gestartet.')
}

function readFormData() {
  return {
    showNumber: document.getElementById('showNumber').value.trim(),
    showType: document.getElementById('showType').value,
    showYear: document.getElementById('showYear').value,
    showLocation: document.getElementById('showLocation').value.trim(),
    association: document.getElementById('association').value,
    feePerBird: document.getElementById('feePerBird').value.trim(),
  }
}

function validateFormData(data) {
  const errors = {}

  if (!data.showNumber) {
    errors.showNumber = 'Bitte geben Sie die Nummer der Schau ein.'
  }

  if (!data.showType) {
    errors.showType = 'Bitte wählen Sie die Art der Schau aus.'
  }

  if (!data.showYear) {
    errors.showYear = 'Bitte wählen Sie das Jahr der Schau aus.'
  }

  if (!data.showLocation) {
    errors.showLocation = 'Bitte geben Sie den Ort der Schau ein.'
  }

  if (!data.association) {
    errors.association = 'Bitte wählen Sie Verband oder Sparte aus.'
  }

  if (!data.feePerBird) {
    errors.feePerBird = 'Bitte geben Sie das Standgeld pro Vogel ein.'
  } else if (!isValidDecimal(data.feePerBird)) {
    errors.feePerBird = 'Bitte geben Sie einen gültigen Betrag ein, z. B. 8,50.'
  }

  return errors
}

function isValidDecimal(value) {
  return /^\d+([.,]\d{1,2})?$/.test(value)
}

function renderErrors(errors) {
  fieldIds.forEach((fieldId) => {
    const field = document.getElementById(fieldId)
    const errorElement = document.querySelector(`[data-error-for="${fieldId}"]`)
    const message = errors[fieldId] || ''

    errorElement.textContent = message
    field.classList.toggle('is-invalid', Boolean(message))
  })
}

function clearFieldError(fieldId) {
  const field = document.getElementById(fieldId)
  const errorElement = document.querySelector(`[data-error-for="${fieldId}"]`)

  field.classList.remove('is-invalid')
  errorElement.textContent = ''
}

function updateStartButtonState() {
  startManagementButton.disabled = !state.saved
  startManagementButton.style.opacity = state.saved ? '1' : '0.6'
  startManagementButton.style.cursor = state.saved ? 'pointer' : 'not-allowed'
}
