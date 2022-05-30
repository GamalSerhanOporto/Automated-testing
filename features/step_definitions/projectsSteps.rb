Given('I enter my coreteam email and password') do
    fill_in 'email', :with => ENV['PUSERStart']
    fill_in 'password', :with => ENV['PSWStart']
  end
  
  Given('I press the proyectos button') do
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[2]'
    find(:xpath, xpath).click 
  end
  
  Given('I press CrearProyectos button') do
    xpath = '/html/body/div/div[2]/div[1]/div/div[1]/div/div[2]/button'
    find(:xpath, xpath).click 
  end
  
  Given('I enter nombreproyecto and descripcion') do
    fill_in 'titulo', :with => ENV['title']
    fill_in 'descripcion', :with => ENV['description']
  end
  
  When('i press the crearproyecto button') do
    xpath = '/html/body/div[2]/div[3]/form/div[2]/div[11]/input'
    find(:xpath, xpath).click 
  end
  
  Then('created message is shown') do
    expect(page).to have_content("PROYECTOS")
    puts find(:xpath,'/html/body/div/div[2]/div[1]/div/div[1]/div/div[1]/h3').text
  end

  Given('I press medioambiente card') do
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div/div[1]'
    find(:xpath, xpath).click 
  end
 
  
  When('I press unirme button') do
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div/div[2]/div[2]/div[2]/div/div/button'
    find(:xpath, xpath).click 
  end

  Then('Participacion exitosa message is shown') do
    expect(page).to have_content("Participacion exitosa")
  end



  
  Given('I press the edit card') do
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div/div[1]/div[2]/div[2]/button'
    find(:xpath, xpath).click
  end
  
  Given('I change nombreproyecto and descripcion') do
    fill_in 'titulo', :with => ENV['Edittitle']
    fill_in 'descripcion', :with => ENV['Editdescription']
  end
  
  When('I select guardarcambios button') do
    xpath = '/html/body/div[2]/div[3]/form/div[2]/div[10]/input'
    find(:xpath, xpath).click
  end
  
  Then('I see the new name of project') do
    expect(page).to have_content("editado")
  end
