Feature: Start Americas Create Project
	In order to create a Start's Project
	As a registered core user
	I want to test registering an Project
Background: 
    Given I am on the StartAmericasTogetherHomepage
		And I enter my user email and password as listed below
			| Email:    | coreteam@gmail.com |
			| Password: | 123456             |
		And I press the sub button
    And I press the proyectos button
  
  Scenario:see event's categories 
    Then The "MEDIO AMBIENTE" text is shown

  Scenario: See events by category
  When I press Medio Ambiente card
    Then The "Proyectos Medio Ambiente" text is shown

Scenario: create a new project      	
        And I press the "Crear Proyecto" button
		And I enter the name and description as shown below
			| Name: | Created By Automated Testing |
			| Description: | Created By Automated Testing |                   
		And I press the Guardar Proyecto button
		When I press Medio Ambiente card
	    Then the "Created By Automated" Test project is shown

    Scenario: Register a project without required fields
		
		And I press the "Crear Proyecto" button
		And I press the Guardar Proyecto button
		Then the "Error: Campo required" message is shown

  Scenario: participate in a project   
  When I press Medio Ambiente card
  When I press unirme button
  Then Participacion exitosa message is shown

Scenario: edit a project
  When I press Medio Ambiente card
  And I press the edit card
  And I change name to Proyecto de prueba editado and descripcion to Proyecto automatizado editado
  When I select guardarcambios button 
  Then I see the new name: Proyecto de prueba editado of project

  Scenario: Delete a project
		When I press Medio Ambiente card
        And I press Ver detalles
		And I press the Eliminar evento button
		When I press the Confirmar eliminacion button
        When I press Medio Ambiente card
		Then The Eliminated project text is not shown
        
  Scenario: See a project details
  When I press Medio Ambiente card
    And I press Ver detalles
    Then The "Lista de Participantes" text is shown




 