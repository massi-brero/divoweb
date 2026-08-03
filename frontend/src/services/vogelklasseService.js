import { request } from './apiClient.js'

export async function lookupVogelklasse(skl1, skl2, skl3) {
  const params = new URLSearchParams({ skl1: skl1.trim() })

  if (skl2?.trim()) {
    params.set('skl2', skl2.trim())
  }

  if (skl3?.trim()) {
    params.set('skl3', skl3.trim())
  }

  return request(`/vogelklassen/lookup?${params}`)
}
