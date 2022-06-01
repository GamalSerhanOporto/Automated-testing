
And(/^I navigate to events$/) do
  visit('https://testing-start.web.app/eventos')
end

And(/^I press the eventos button$/) do
  xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
  find(:xpath,xpath).click
end

And(/^I press the "Guardar Evento" button$/) do
  css = '#ModalFormCrearEvento > div > form > div.CamposBotones > button.botonCrear.btn.btn-secondary'
  find(:css,css).click
end

When(/^I press the "Crear eventos" button/) do
  css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(1)'
  find(:css, css).click 
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

And(/^I press the "Detalles" button$/) do
  css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div.Container-Body > div:nth-child(1) > div > div.CardBody-Eventos.card-body > div > button:nth-child(2)'
  find(:css,css).click
end

And(/^I press the eventos pasados button$/) do
  css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(2)'
  find(:css,css).click
end

And(/^The current events are shown$/) do
  expect(page).to have_selector(:css,"#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div.Container-Body")
end

Then('The past events are shown') do
  expect(page).to have_selector(:css,"#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div.Container-Body")
end

And(/^I press the "Editar" button$/) do
  css = '#root > div:nth-child(2) > div:nth-child(2) > div > button'
  find(:css,css).click
end

And('I enter the new event name and descripton as shown below') do |table|
  data = table.rows_hash
  cssName = '#ModalFormEditEvento > div > form > div:nth-child(1) > div > input'
  cssDescription = '#filled-multiline-flexible'
  data.each_pair do |key, value|
    case key
    when "Name:"
      find(:css, cssName).set(value)
    when "Description:"
      find(:css, cssDescription).set(value)
    end
  end
end

And('I enter the name and date as shown below') do |table|
  data = table.rows_hash
  cssName = '#ModalFormCrearEvento > div > form > div.MuiFormControl-root.MuiTextField-root.nombreEventoCrear.textInput.css-i44wyl > div > input'
  cssDate = '#ModalFormCrearEvento > div > form > div.MuiFormControl-root.MuiTextField-root.FechaEventoCrear.textInput.css-i44wyl > div > input'
  data.each_pair do |key, value|
    case key
    when "Name:"
      find(:css, cssName).set(value)
    when "Date:"
      find(:css, cssDate).set(value)
    end
  end
end

When('I press the "Guardar Cambios" button') do
  xpath = '//*[@id="ModalFormEditEvento"]/div/form/div[11]/button[1]'
  find(:xpath,xpath).click
end

When('I press the "Crear Evento" button') do
  css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(1)'
  find(:css,css).click
end


Then('the {string} event is shown') do |string|
  expect(page).to have_content(string)
end

Given('I press the "Participar" button in an event') do 
  css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div.Container-Body > div:nth-child(1) > div > div.CardBody-Eventos.card-body > div > button:nth-child(1)'
  find(:css,css).click
end

Given('I press the "Dejar de participar" button in an event') do 
  css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div.Container-Body > div:nth-child(1) > div > div.CardBody-Eventos.card-body > div > button:nth-child(1)'
  find(:css,css).click
end
