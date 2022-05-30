
And(/^I navigate to events$/) do
  visit('https://testing-start.web.app/eventos')
end

And(/^I press the eventos Button$/) do
  xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
  find(:xpath,xpath).click
end

And(/^I press the "Guardar Evento" Button$/) do
  css = '#ModalFormCrearEvento > div > form > div.CamposBotones > button.botonCrear.btn.btn-secondary'
  find(:css,css).click
end


When(/^I press the "Crear eventos" Button/) do
  css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(1)'
  find(:css, css).click 
end

Then(/^the CT user is shown$/) do
    expect(page).to have_content("CT")
    puts find(:xpath,'/html/body/div/div[2]/header/div[1]/div[3]/div/div/span[1]').text
end

Then(/^the "Nombre del Evento o Fecha del Evento vacía" message is shown$/) do
  puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(2) > div > div > div.MuiAlert-message').text
  expect(page).to have_content("Nombre del Evento o Fecha del Evento vacía")
end

And(/^the "Lista de participantes" message is shown$/) do
  expect(page).to have_content("Lista De Participantes")
  puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.listForm > h4 > b').text
end

Then(/^the event information is shown$/) do
  expect(page).to have_content("Hora Inicio:")
  expect(page).to have_content("Hora Fin:")
  expect(page).to have_content("Fecha:")
  expect(page).to have_content("Proyecto:")
  expect(page).to have_content("Modalidad:")
  expect(page).to have_content("Lugar:")
  expect(page).to have_content("Categoría:")
  expect(page).to have_content("Lider:")
  expect(page).to have_content("Descripción:")
end


And(/^I press the "Detalles" Button$/) do
  css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div.Container-Body > div:nth-child(1) > div > div.CardBody-Eventos.card-body > div > button:nth-child(2)'
  find(:css,css).click
end

And(/^The "Eventos Vigentes" text is shown$/) do
  expect(page).to have_content("EVENTOS VIGENTES")
  puts find(:css,'#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div.Container-Body').text
end

And(/^The current events are shown$/) do
  expect(page).to have_selector(:css,"#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div.Container-Body")
end