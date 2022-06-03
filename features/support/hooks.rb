After do
  Capybara.current_session.driver.quit
end


Before '@maximize' do
page.driver.browser.manage.window.maximize
end

Before '@SetupPendingEvent' do
#Open app
page.driver.browser.manage.window.maximize
visit('https://testing-start.web.app/login')
#Login
  fill_in 'email', :with => 'coreteam@gmail.com'
  fill_in 'password', :with => '123456'
  xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
  find(:xpath, xpath).click 
#Navigate to events
xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
find(:xpath,xpath).click
#Create Event
css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(1)'
cssName = '#ModalFormCrearEvento > div > form > div.MuiFormControl-root.MuiTextField-root.nombreEventoCrear.textInput.css-i44wyl > div > input'
cssDescription = '#filled-multiline-flexible'
cssDate = '#ModalFormCrearEvento > div > form > div.MuiFormControl-root.MuiTextField-root.FechaEventoCrear.textInput.css-i44wyl > div > input'

find(:css, css).click 
find(:css, cssName).set('TC-G3-PENDING-EVENT')
find(:css, cssDescription).set('TC-G3-PENDING-EVENT')
find(:css, cssDate).set('22/12/2022')

cssSave = '#ModalFormCrearEvento > div > form > div.CamposBotones > button.botonCrear.btn.btn-secondary'
find(:css,cssSave).click

end

Before '@SetupPastEvent' do
#Open app
page.driver.browser.manage.window.maximize
visit('https://testing-start.web.app/login')
#Login
  fill_in 'email', :with => 'coreteam@gmail.com'
  fill_in 'password', :with => '123456'
  xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
  find(:xpath, xpath).click 
#Navigate to events
xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
find(:xpath,xpath).click
#Create Pending Event 'TC-G3-PENDING'
css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(1)'
cssName = '#ModalFormCrearEvento > div > form > div.MuiFormControl-root.MuiTextField-root.nombreEventoCrear.textInput.css-i44wyl > div > input'
cssDescription = '#filled-multiline-flexible'
cssDate = '#ModalFormCrearEvento > div > form > div.MuiFormControl-root.MuiTextField-root.FechaEventoCrear.textInput.css-i44wyl > div > input'
cssSave = '#ModalFormCrearEvento > div > form > div.CamposBotones > button.botonCrear.btn.btn-secondary'

#Create Past Event
find(:css, css).click 
find(:css, cssName).set('TC-G3-PAST-EVENT')
find(:css, cssDescription).set('TC-G3-PAST-EVENT')
find(:css, cssDate).set('22/12/2020')
find(:css,cssSave).click
end

Before '@SetupParticipatingEvent' do
#Open app
page.driver.browser.manage.window.maximize
visit('https://testing-start.web.app/login')
#Login
  fill_in 'email', :with => 'coreteam@gmail.com'
  fill_in 'password', :with => '123456'
  xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
  find(:xpath, xpath).click 
#Navigate to events
xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
find(:xpath,xpath).click
css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(1)'
cssName = '#ModalFormCrearEvento > div > form > div.MuiFormControl-root.MuiTextField-root.nombreEventoCrear.textInput.css-i44wyl > div > input'
cssDescription = '#filled-multiline-flexible'
cssDate = '#ModalFormCrearEvento > div > form > div.MuiFormControl-root.MuiTextField-root.FechaEventoCrear.textInput.css-i44wyl > div > input'
cssSave = '#ModalFormCrearEvento > div > form > div.CamposBotones > button.botonCrear.btn.btn-secondary'
#Create Pending Event to stop participating 'TC-G3-PENDING-SP'
find(:css, css).click 
find(:css, cssName).set('TC-G3-PENDING-SP')
find(:css, cssDescription).set('TC-G3-PENDING-SP')
find(:css, cssDate).set('22/12/2022')
find(:css,cssSave).click
click_button('participar_TC-G3-PENDING-SP')
end

After '@DeletePendingEvent' do
#Open app
page.driver.browser.manage.window.maximize
visit('https://testing-start.web.app/login')
#Login
  fill_in 'email', :with => 'coreteam@gmail.com'
  fill_in 'password', :with => '123456'
  xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
  find(:xpath, xpath).click 
#Navigate to events
xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
find(:xpath,xpath).click
#Delete Pending Event
click_button('Eliminar_TC-G3-PENDING-EVENT')
sleep(2)
click_button('eliminareventoTC-G3-PENDING-EVENT')
sleep(3)
end

After '@DeleteParticipatingEvent' do
#Open app
page.driver.browser.manage.window.maximize
visit('https://testing-start.web.app/login')
#Login
  fill_in 'email', :with => 'coreteam@gmail.com'
  fill_in 'password', :with => '123456'
  xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
  find(:xpath, xpath).click 
#Navigate to events
xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
find(:xpath,xpath).click
#Delete Participating Event
click_button('Eliminar_TC-G3-PENDING-SP')
sleep(2)
click_button('eliminareventoTC-G3-PENDING-SP')
sleep(3)
end

After '@DeletePastEvent' do
#Open app
page.driver.browser.manage.window.maximize
visit('https://testing-start.web.app/login')
#Login
  fill_in 'email', :with => 'coreteam@gmail.com'
  fill_in 'password', :with => '123456'
  xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
  find(:xpath, xpath).click 
#Navigate to events
xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
find(:xpath,xpath).click
#Navigate to past events
css = '#root > div:nth-child(2) > div:nth-child(2) > div > div.container1.container > div:nth-child(1) > div.Menu-Bar-Evento > div.header-botones-eventos > button:nth-child(2)'
find(:css,css).click
#Delete Past Event
click_button('Eliminar_TC-G3-PAST-EVENT')
sleep(2)
click_button('eliminareventoTC-G3-PAST-EVENT')
sleep(3)
end

After '@DeleteEventoNuevo' do
#Open app
page.driver.browser.manage.window.maximize
visit('https://testing-start.web.app/login')
#Login
  fill_in 'email', :with => 'coreteam@gmail.com'
  fill_in 'password', :with => '123456'
  xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
  find(:xpath, xpath).click 
#Navigate to events
xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[3]'
find(:xpath,xpath).click
#Delete Event
click_button('Eliminar_EventoNuevo')
sleep(2)
click_button('eliminareventoEventoNuevo')
sleep(3)
end