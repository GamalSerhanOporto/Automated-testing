When(/^I click on the users section in the navbar$/) do
    xpath = '  /html/body/div/div[2]/header/div[2]/div/button[5]'
    find(:xpath, xpath).click 
  end
 
  And (/^I can see the content in the table$/) do
    xpath = '/html/body/div/div[2]/div[1]/section/div[3]/div/div[2]/div[2]/div/div'
    find(:xpath, xpath).click 
  end

  And (/^I'm able to see at least one user in the table$/) do
    xpath = '/html/body/div/div[2]/div[1]/section/div[3]/div/div[2]/div[2]/div/div/div/div/div/div[1]'
    find(:xpath, xpath).click 
  end

  When (/^I press the criteria button$/) do
    xpath = '/html/body/div/div[2]/div[1]/section/div[2]/section/div[1]/div/select'
    find(:xpath, xpath).click 
  end

  And (/^I filter by lastname$/) do
    xpath = '/html/body/div/div[2]/div[1]/section/div[2]/section/div[1]/div/select/option[3]'
    find(:xpath, xpath).click 
  end

  And (/^I search for the lastname "Aliss"$/) do
    fill_in 'search-input', :with => "Aliss\n"
  end

  And (/^The user "Jaimen Herbas" is shown$/) do
    expect(page).to have_content("Jaimen Herbas")
  end
 