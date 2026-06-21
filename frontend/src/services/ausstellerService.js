import { request } from './apiClient.js'

export function getAusstellerErgebnisse(schauId) {
  return request(`/schauen/${schauId}/aussteller-ergebnisse`)
}

export function getVoegelJeAussteller(schauId, verband, verbandsnummer) {
  const query = new URLSearchParams({ verband, verbandsnummer })
  return request(`/schauen/${schauId}/aussteller-uebersicht?${query}`)
}

export const ausstellerErgebnisseMock = [
  {
    verbandsnummer: '1234',
    name: 'Anna Beispiel',
    verband: 'AZ',
    plaetze: 4,
    gold: 1,
    silber: 1,
    bronze: 0,
    punkte: 18,
  },
  {
    verbandsnummer: '4711',
    name: 'Peter Mustermann',
    verband: 'AZ',
    plaetze: 3,
    gold: 0,
    silber: 1,
    bronze: 1,
    punkte: 11,
  },
]

export const voegelJeAusstellerMock = {
  aussteller: {
    verbandsnummer: '1234',
    name: 'Anna Beispiel',
    verband: 'AZ',
    punkte: 18,
  },
  voegel: [
    {
      kaefigNummer: 101,
      schauklasse: '15/5/1',
      farbbezeichnung: 'Hellgrün',
      geschlecht: 'Männlich',
      platzierung: 1,
      medaille: 'Gold',
      punkte: 8,
    },
    {
      kaefigNummer: 102,
      schauklasse: '15/5/2',
      farbbezeichnung: 'Dunkelgrün',
      geschlecht: 'Weiblich',
      platzierung: 2,
      medaille: 'Silber',
      punkte: 6,
    },
  ],
}
