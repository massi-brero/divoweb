const dropdowns = document.querySelectorAll('.nav-dropdown')

initNavigationDropdowns()

function initNavigationDropdowns() {
  dropdowns.forEach((dropdown) => {
    const button = dropdown.querySelector('.nav-dropdown__button')
    const menu = dropdown.querySelector('.nav-dropdown__menu')

    if (!button || !menu) {
      return
    }

    button.setAttribute('aria-expanded', 'false')

    dropdown.addEventListener('mouseenter', () => openDropdown(dropdown))
    dropdown.addEventListener('focusin', () => openDropdown(dropdown))

    button.addEventListener('click', (event) => {
      event.stopPropagation()

      if (dropdown.classList.contains('is-open')) {
        closeDropdown(dropdown)
        return
      }

      openDropdown(dropdown)
    })

    menu.addEventListener('click', (event) => {
      event.stopPropagation()
    })
  })

  document.addEventListener('click', (event) => {
    if (!event.target.closest('.nav-dropdown')) {
      closeAllDropdowns()
    }
  })

  document.addEventListener('keydown', (event) => {
    if (event.key === 'Escape') {
      closeAllDropdowns()
      document.activeElement?.blur?.()
    }
  })
}

function openDropdown(dropdownToOpen) {
  dropdowns.forEach((dropdown) => {
    if (dropdown === dropdownToOpen) {
      dropdown.classList.add('is-open')
      dropdown.querySelector('.nav-dropdown__button')?.setAttribute('aria-expanded', 'true')
    } else {
      closeDropdown(dropdown)
    }
  })
}

function closeDropdown(dropdown) {
  dropdown.classList.remove('is-open')
  dropdown.querySelector('.nav-dropdown__button')?.setAttribute('aria-expanded', 'false')
}

function closeAllDropdowns() {
  dropdowns.forEach(closeDropdown)
}
