// Im Deployment läuft das Frontend hinter nginx, das /api an das Backend weiterleitet.
// Daher genügt ein relativer Pfad. Nur wenn die Seite direkt vom Dateisystem oder einem
// separaten Dev-Server geöffnet wird, fällt der Client auf localhost:8080 zurück.
const servedByWebserver = window.location.protocol.startsWith('http') && window.location.port !== '63342'

export const API_BASE_URL = servedByWebserver
  ? '/api/v1'
  : 'http://localhost:8080/api/v1'

export async function request(path, options = {}) {
  const response = await fetch(`${API_BASE_URL}${path}`, {
    headers: {
      'Content-Type': 'application/json',
      ...(options.headers ?? {}),
    },
    ...options,
  })

  if (!response.ok) {
    const errorText = await response.text()
    throw new Error(errorText || `Request fehlgeschlagen. Status: ${response.status}`)
  }

  if (response.status === 204) {
    return null
  }

  return response.json()
}
