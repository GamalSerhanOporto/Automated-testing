Given(/^I am on the StartAmericasTogetherRegistersPage$/) do
    page.driver.browser.manage.window.maximize
    visit('https://testing-start.web.app/register')

end

Given(/^I enter name and lastname$/) do
    fill_in 'username', :with => ENV['name']
    fill_in 'lastname', :with => ENV['fname']
  end

Given(/^I enter my email and my desired password twice$/) do
    fill_in 'email', :with => ENV['email']
    fill_in 'password', :with => ENV['password']
    fill_in 'confirmPassword', :with => ENV['password']
  end

  Given(/^I enter my phone number$/) do
    fill_in 'phone', :with => ENV['phone']
    
  end

  When(/^I press the submit button$/) do
    xpath = '/html/body/div/div[2]/div[1]/div/div/div[2]/div[3]/form/div[7]/button'
    find(:xpath, xpath).click 
  end

  Then(/^the "Se ha enviado un correo de confirmación al email" message is shown$/) do
    expect(page).to have_content("Se ha enviado un correo de confirmación al email")
    puts find(:xpath,'/html/body/div/div[2]/div[1]/div/div/div[3]/div/div/div[2]').text
  end