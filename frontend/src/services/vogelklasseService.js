export async function lookupVogelklasseMock(skl1, skl2, skl3) {
  // TODO Backend-Endpunkt ergänzen, z. B.:
  // GET /v1/vogelklassen/lookup?skl1=15&skl2=5&skl3=1
  const schluessel = [skl1, skl2, skl3].filter(Boolean).join('/')

  return {
    id: null,
    schluessel,
    farbbezeichnung: `Mock-Farbe für ${schluessel}`,
  }
}
