When(/^I click on the account section in the navbar$/) do
    xpath = '/html/body/div/div[2]/header/div[2]/div/button[4]'
    find(:xpath, xpath).click 
  end

And (/^I can see the content in the events table$/) do
    xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[3]/div/div/div[1]'
    find(:xpath, xpath).click 
  end

And (/^I'm able to see at least one event in the table$/) do
    xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[3]/div/div/div[1]/div/span/div/div[2]/div[1]'
    find(:xpath, xpath).click 
  end