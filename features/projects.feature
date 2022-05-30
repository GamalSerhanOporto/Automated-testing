Feature: Start Americas Create Project
  In order to enter Start's site
  As a registered user
  I want to create a new project

  Scenario: create a new project      
	Given I am on the StartAmericasTogetherHomepage
	And I enter my coreteam email and password
	And I press the sub button
  And I press the proyectos button
  And I press CrearProyectos button
  And I enter nombreproyecto and descripcion 
  When i press the crearproyecto button 
  Then created message is shown


 Scenario: participate in a project   
	Given I am on the StartAmericasTogetherHomepage
	And I enter my coreteam email and password
	And I press the sub button
  And I press the proyectos button
  And I press medioambiente card
  When I press unirme button
  Then Participacion exitosa message is shown

Scenario: edit a project
Given I am on the StartAmericasTogetherHomepage
	And I enter my coreteam email and password
	And I press the sub button
  And I press the proyectos button
  And I press medioambiente card
  And I press the edit card
  And I change nombreproyecto and descripcion
  When I select guardarcambios button 
  Then I see the new name of project




    