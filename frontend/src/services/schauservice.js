const API_BASE_URL = "http://localhost:8080/api/v1";

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
 * @returns {Promise<Object>}
 */
export async function schauAnlegen(schau) {
  const response = await fetch(`${API_BASE_URL}/schauen`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(schau),
  });

  if (!response.ok) {
    const errorText = await response.text();
    throw new Error(
      errorText ||
        `Die Schau konnte nicht gespeichert werden. Status: ${response.status}`,
    );
  }

  return response.json();
}
