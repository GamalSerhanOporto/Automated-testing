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



