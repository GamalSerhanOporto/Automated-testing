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
    xpath = '/html/body/div/div[2]/header/div[1]/div[3]/div/div'
    find(:xpath, xpath).click 
  end

  When(/^I press the sub button$/) do
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
    find(:xpath, xpath).click 
  end

  Then(/^I'm able to see the "Logout" button$/) do
     find(:xpath, "/html/body/div[2]/div/button")
  end


 