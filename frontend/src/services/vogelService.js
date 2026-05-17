import { request } from './apiClient.js'

export function getAnmeldungen(schauId) {
  return request(`/schauen/${schauId}/anmeldungen`)
}

export function getNaechsteKaefignummer(schauId) {
  return request(`/schauen/${schauId}/anmeldungen/naechste-kaefignummer`)
}

export function createAnmeldung(schauId, payload) {
  return request(`/schauen/${schauId}/anmeldungen`, {
    method: 'POST',
    body: JSON.stringify(payload),
  })
}
