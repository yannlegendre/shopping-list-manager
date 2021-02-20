const calculAllureButton  = document.querySelector('.vitesse button')
const calculVitesseButton = document.querySelector('.allure button')

calculVitesseButton.addEventListener("click", () => {
  const allureSec = parseInt(document.querySelector('#allure-sec').value)
  const allureMin = parseInt(document.querySelector('#allure-min').value)
  document.querySelector('.result-vitesse').innerHTML = (60 / (allureMin + allureSec / 60)).toFixed(2)
})

calculAllureButton.addEventListener("click", () => {
  const vitesse = parseInt(document.querySelector('#vitesse').value)
  const allureDec = 60 / vitesse
  const allureMin = Math.trunc(allureDec)
  const allureSec = (allureDec - allureMin).toFixed(2) * 100
  document.querySelector('.result-allure-min').innerHTML = allureMin
  document.querySelector('.result-allure-sec').innerHTML = allureSec
})
