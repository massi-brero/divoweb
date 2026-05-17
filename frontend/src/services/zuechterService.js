import { request } from './apiClient.js'

export function getZuechter() {
  return request('/zuecher')
}

export function createZuechter(payload) {
  return request('/zuecher', {
    method: 'POST',
    body: JSON.stringify(payload),
  })
}

export function updateZuechter(id, payload) {
  return request(`/zuecher/${id}`, {
    method: 'PUT',
    body: JSON.stringify(payload),
  })
}

export async function findZuechterByVerbandsnummer(verband, verbandsnummer) {
  // TODO Backend schöner: GET /zuecher/suche/verbandsnummer?verband=AZ&verbandsnummer=123
  // Aktuell existiert laut README nur /zuecher und /zuecher/suche?name=.
  const zuechter = await getZuechter()

  return zuechter.find(
    (item) =>
      item.verband === verband &&
      String(item.verbandsnummer).toLowerCase() === String(verbandsnummer).toLowerCase(),
  )
}
