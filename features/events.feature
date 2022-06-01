Feature: Start Americas Create Event
	In order to create a Start's event
	As a registered core user
	I want to test registering an event

	Scenario: Register an event without required fields
		Given I am on the StartAmericasTogetherHomepage
		And I enter my core user email and password
		And I press the sub button
		And I press the eventos button
		When I press the "Crear eventos" button
		And I press the "Guardar Evento" button
		Then the "Nombre del Evento o Fecha del Evento vacía" message is shown

	Scenario: See an event details
		Given I am on the StartAmericasTogetherHomepage
		And I enter my core user email and password
		And I press the sub button
		And I press the eventos button
		When I press the "Detalles" button
		Then the event information is shown
		And the "Lista De Participantes" message is shown

	Scenario: See pending events
		Given I am on the StartAmericasTogetherHomepage
		And I enter my core user email and password
		And I press the sub button
		When I press the eventos button
		Then The "EVENTOS VIGENTES" text is shown
		And The current events are shown

	Scenario: See past events
		Given I am on the StartAmericasTogetherHomepage
		And I enter my core user email and password
		And I press the sub button
		And I press the eventos button
		When I press the eventos pasados button
		Then The "EVENTOS PASADOS" text is shown
		And The past events are shown

	Scenario: Edit an events information
		Given I am on the StartAmericasTogetherHomepage
		And I enter my core user email and password
		And I press the sub button
		And I press the eventos button
		And I press the "Detalles" button
		And the event information is shown
		And I press the "Editar" button
		When I enter the new event name and descripton as shown below
			| Name:        | Edited By Automated Test |
			| Description: | Edited By Automated Test |
		And I press the "Guardar Cambios" button
		Then the "Evento Actualizado" message is shown
		And The event "description" changes to "Edited By Automated Test"
		And The event "name" changes to "Edited By Automated Test"

	Scenario: Create an event
		Given I am on the StartAmericasTogetherHomepage
		And I enter my core user email and password
		And I press the sub button
		And I press the eventos button
		And I press the "Crear Evento" button
		And I enter the name and date as shown below
			| Name: | Created By Automated Test |
			| Date: | 22/12/2022                |
		When I press the "Guardar Evento" button
		Then the "Evento Guardado" message is shown
		And the "Created By Automated Test" event is shown

	Scenario: Participate in an event
		Given I am on the StartAmericasTogetherHomepage
		And I enter my core user email and password
		And I press the sub button
		And I press the eventos button
		When I press the "Participar" button in an event
		Then the "Tu participación en el evento ha sido registrada" message is shown
		And I press the "Detalles" button
		And the event information is shown
		And The "Core Team" text is shown

	Scenario: Stop participating in an event
		Given I am on the StartAmericasTogetherHomepage
		And I enter my core user email and password
		And I press the sub button
		And I press the eventos button
		When I press the "Dejar de participar" button in an event
		Then the "Tu participación en el evento ha sido eliminada" message is shown
		And I press the "Detalles" button
		And the event information is shown
		And The "Core Team" text is not shown


