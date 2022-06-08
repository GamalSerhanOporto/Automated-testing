Given(/^I am on the StartAmericasTogetherHomepage$/) do
    page.driver.browser.manage.window.maximize
    visit('https://testing-start.web.app/login')

end

And('I enter my user email and password as listed below') do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
    when "Email:"
      fill_in 'email', :with => value
    when "Password:"
      fill_in 'password', :with => value
    end
  end
end

  And(/^I press the user profile button$/) do
    css = '#root > div:nth-child(2) > header > div.header-logo > div:nth-child(3) > div > div'
    find(:css, css).click 
  end

  When(/^I press the sub button$/) do
    css = '#root > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(2) > div.MuiGrid-root.jss13 > div > form > div > button > span.MuiButton-label'
    find(:css, css).click 
  end

  Then(/^I'm able to see the "Logout" button$/) do
     find(:css, "body > div:nth-child(6) > div > button > span.MuiButton-label") 
  end


 