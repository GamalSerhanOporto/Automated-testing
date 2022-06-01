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