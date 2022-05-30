Feature: Start Americas Create Event
In order to create a Start's event
As a registered core user
I want to test registering an event

  Scenario: Register an event without required fields
	Given I am on the StartAmericasTogetherHomepage
	And I enter my core user email and password
	And I press the sub button
	And I press the eventos Button
	When I press the "Crear eventos" Button 
	And I press the "Guardar Evento" Button
    Then the "Nombre del Evento o Fecha del Evento vacía" message is shown

  Scenario: See an event details
	Given I am on the StartAmericasTogetherHomepage
	And I enter my core user email and password
	And I press the sub button
	And I press the eventos Button
	When I press the "Detalles" Button
	Then the event information is shown
	And the "Lista de participantes" message is shown

  Scenario: See events
	Given I am on the StartAmericasTogetherHomepage
	And I enter my core user email and password
	And I press the sub button
	When I press the eventos Button
	Then The "Eventos Vigentes" text is shown
	And The current events are shown
	
 

	