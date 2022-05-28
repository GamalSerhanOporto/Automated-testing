Given(/^I am on the StartAmericasTogetherHomepage$/) do
    page.driver.browser.manage.window.maximize
    visit('https://testing-start.web.app/login')

end

Given(/^I enter my email and password$/) do
    fill_in 'email', :with => ENV['USERStart']
    fill_in 'password', :with => ENV['PSWStart']
  end

  Given(/^I enter my email and an incorrect password$/) do
    fill_in 'email', :with => ENV['USERStart']
    fill_in 'password', :with => ENV['IncorrectPSWStart']
  end

  When(/^I press the sub button$/) do
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
    find(:xpath, xpath).click 
  end

  Then(/^the login successfully message is displayed$/) do
    expect(page).to have_content("Login Successfully")
    puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(1) > font > b').text
    puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[1]/font/b').text
end

Then(/^the "tus proximos eventos" screen is shown$/) do
    greeting = "Tus proximos eventos" 	
    expect(page).to have_content(greeting)
    
  end

  Then(/^the VV user is shown$/) do
    expect(page).to have_content("VV")
    puts find(:xpath,'/html/body/div/div[2]/header/div[1]/div[3]/div/div/span[1]').text
  end

  Then(/^the "Correo o contraseña inválidos" message is shown$/) do
    expect(page).to have_content("Correo o contraseña inválidos.")
    puts find(:xpath,'  /html/body/div/div[2]/div[1]/div/div[2]/div[3]/div/div/div[2]').text
  end