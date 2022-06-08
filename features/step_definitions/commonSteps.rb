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

#Verify event is shown
Then('The event {string} is shown') do |string|
    expect(page).to have_content(string)
  end
  
#Verify event is shown
Then('The event {string} is not shown') do |string|
    expect(page).not_to have_content(string)
end

#Press named button
Given('I press the {string} button') do |string|
    case string
    when 'eventos'
      button = 'eventos'  
    when 'Crear Evento'
      button = 'crear_evento'
    when 'Guardar Evento'
      button = 'GuardarEvento'
    when 'Crear Proyecto'
      button='crearProyecto'
    when 'Guardar Proyecto'
      button='crearProyecto1'
    
    when 'Eliminar proyecto'
      button='eliminarproyecto'
    when'Confirmar eliminacion'
      button='eliminarproyecto1'
    end
    click_button(button)
  end