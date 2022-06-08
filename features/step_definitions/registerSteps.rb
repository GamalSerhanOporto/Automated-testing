Given(/^I am on the StartAmericasTogetherRegistersPage$/) do
    page.driver.browser.manage.window.maximize
    visit('https://testing-start.web.app/register')

end

def random_string(length=6)
  chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789'
  string = ''
  length.times { string << chars[rand(chars.size)] }
  string
end

And('I fill the register fields as shown below') do |table|
  data = table.rows_hash
  random_string = random_string()
  random_email = "auto#{random_string}@test.qa"
  data.each_pair do |key, value|
    case key
    when "Name:"
      fill_in 'username', :with => value
    when "Lastname:"
      fill_in 'lastname', :with => value
    when "Email:"
      fill_in 'email', :with => random_email
    when "EmailFail:"
      fill_in 'email', :with => value
    when "Phone:"
      fill_in 'phone', :with => value
    when "Password:"
      fill_in 'password', :with => value
    when "Confirm password:"
      fill_in 'confirmPassword', :with => value
    end
  end
end

And(/^the submit button should be disabled$/) do
  expect(page).to have_button(type: "submit", disabled: true)
end

  When(/^I press the submit button$/) do
    css = '#root > div:nth-child(2) > div:nth-child(2) > div > div > div.MuiGrid-root > div.MuiPaper-root.MuiCard-root.jss13.MuiPaper-elevation1.MuiPaper-rounded > form > div.jss15 > button > span.MuiButton-label'
    find(:css, css).click 
  end