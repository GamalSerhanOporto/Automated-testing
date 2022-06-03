Given('I enter my coreteam email and password') do
    fill_in 'email', :with => ENV['PUSERStart']
    fill_in 'password', :with => ENV['PSWStart']
  end
  
  Given('I press the proyectos button') do
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[2]'
    find(:xpath, xpath).click 
  end
Given('I press the "Crear Proyecto" button') do 
    xpath = '/html/body/div/div[2]/div[1]/div/div[1]/div/div[2]/button'
    find(:xpath, xpath).click 
    
end
  

  
  Given('I enter the name and description as shown below') do |table|
    data = table.rows_hash
    
    cssName = 'body > div:nth-child(6) > div.paper-crear > form > div:nth-child(3) > div:nth-child(6) > input[type=text]'
    cssDescription = 'body > div:nth-child(6) > div.paper-crear > form > div:nth-child(3) > div:nth-child(8) > input[type=text]'
    data.each_pair do |key, value|
      case key
      when "Name:"
        find(:css, cssName).set(value)
      when "Description:"
        find(:css, cssDescription).set(value)
      end
    end
  end
  Given('I press the Guardar Proyecto button') do 
    xpath = '/html/body/div[2]/div[3]/form/div[2]/div[11]/input'
    find(:xpath, xpath).click 
  end
  
  When('I press Medio Ambiente card') do 
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div/div[1]'
    find(:xpath, xpath).click 
  end


  Then('the {string} Test project is shown') do |string|
    expect(page).to have_content(string) 
  end

  
  When('I press unirme button') do
    css = '#\35 8 > button'
    find(:css,css).click
  end

  Then('Participacion exitosa message is shown') do
    expect(page).to have_content("Participacion exitosa")
  end



  
  Given('I press the edit card') do
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div/div[1]/div[2]/div[2]/button'
    find(:xpath, xpath).click
  end
  
  Given('I change name to Proyecto de prueba editado and descripcion to Proyecto automatizado editado') do
    fill_in 'titulo', :with => ENV['Edittitle']
    fill_in 'descripcion', :with => ENV['Editdescription']
  end
  
  When('I select guardarcambios button') do
    xpath = '/html/body/div[2]/div[3]/form/div[2]/div[10]/input'
    find(:xpath, xpath).click
  end
  
  Then('I see the new name: Proyecto de prueba editado of project') do
    expect(page).to have_content("Proyecto de prueba editado")
  end

  When('I press Ver detalles') do
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div/div[1]/div[2]/div[2]/a'
    find(:xpath, xpath).click
    
  end
  When('I press the Eliminar evento button') do
    
    xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[2]/div[1]/div/button'
    find(:xpath, xpath).click
  end
  
  When('I press the Confirmar eliminacion button') do
    xpath = '/html/body/div[2]/div[3]/div/div[3]/button[1]'
    find(:xpath, xpath).click
  end
  name='/html/body/div/div[2]/div[1]/div/div[2]/div/div[1]/div[2]/div[1]/p[1]'
  Then('The Eliminated project text is not shown') do
    expect(page).not_to have_content(name)
  end