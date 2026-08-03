export const API_BASE_URL = "http://localhost:8080/api/v1";

export async function request(path, options = {}) {
  let response;

  try {
    response = await fetch(`${API_BASE_URL}${path}`, {
      headers: {
        "Content-Type": "application/json",
        ...(options.headers ?? {}),
      },
      ...options,
    });
  } catch {
    throw new Error(
      "Das Backend ist momentan nicht erreichbar. Bitte prüfen Sie, ob der Server läuft.",
    );
  }

  if (!response.ok) {
    throw await createApiError(response);
  }

  if (response.status === 204) {
    return null;
  }

  return response.json();
}

async function createApiError(response) {
  let detail;

  try {
    const problem = await response.json();
    detail = problem.detail || problem.message || problem.title;
  } catch {
    detail = await response.text();
  }

  return new Error(detail || getDefaultErrorMessage(response.status));
}

function getDefaultErrorMessage(status) {
  switch (status) {
    case 400:
      return "Die eingegebenen Daten sind ungültig.";
    case 404:
      return "Der angeforderte Datensatz wurde nicht gefunden.";
    case 409:
      return "Die Daten konnten wegen eines Konflikts nicht gespeichert werden.";
    case 422:
      return "Bitte prüfen Sie die eingegebenen Daten.";
    case 500:
      return "Im Backend ist ein unerwarteter Fehler aufgetreten.";
    default:
      return `Die Anfrage ist fehlgeschlagen. Status: ${status}`;
  }
}
