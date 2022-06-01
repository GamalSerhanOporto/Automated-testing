#TEXT SHOWN
And(/^The "([^"]*)" text is shown$/) do |text|
    expect(page).to have_content(text)
end

#MESSAGE SHOWN
And(/^the "([^"]*)" message is shown$/) do |message|
    expect(page).to have_content(message)
end

#LOGIN PROFILE
Then(/^the "([^"]*)" user profile is shown$/) do |profile|
    expect(page).to have_content(profile)
end

#VERIFY EDITED CHANGES
Then('The event {string} changes to {string}') do |string, string2|
    expect(page).to have_content(string2)
end

#TEXT NOT SHOWN
And(/^The "([^"]*)" text is not shown$/) do |text|
    expect(page).not_to have_content(text)
end
