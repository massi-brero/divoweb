import { request } from './apiClient.js'

/**
 * @typedef {Object} SchauAnlegenRequest
 * @property {'LANDESSCHAU' | 'BUNDESSCHAU' | 'VEREINSSCHAU' | 'EUROPASCHAU'} schautyp
 * @property {number} jahr
 * @property {string} ort
 * @property {'AZ' | 'DKB' | 'AGZ' | 'DWV'} verband
 * @property {number} standgeldProVogel
 * @property {string} [notizen]
 */

/**
 * Legt eine neue Schau im Backend an.
 *
 * @param {SchauAnlegenRequest} schau
 * @returns {Promise<object>}
 */
export function schauAnlegen(schau) {
  return request('/schauen', {
    method: 'POST',
    body: JSON.stringify(schau),
  })
}

export function getSchauen() {
  return request('/schauen')
}
