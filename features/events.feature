Feature: Start Americas Create Event
	In order to create a Start's event
	As a registered core user
	I want to test registering an event

	Background:
		Given I am on the StartAmericasTogetherHomepage
		And I enter my user email and password as listed below
			| Email:    | coreteam@gmail.com |
			| Password: | 123456             |
		And I press the sub button
		And I press the eventos button

	@SetupPendingEvent @DeletePendingEvent
	Scenario: Participate in an event
		Given I press the "Participar" button in the "TC-G3-PENDING-EVENT" event
		And the "Tu participación en el evento ha sido registrada" message is shown
		And I press the "Detalles" button in the "TC-G3-PENDING-EVENT" event
		When the event information is shown
		Then The "Core Team" text is shown


	@SetupParticipatingEvent @DeleteParticipatingEvent
	Scenario: Stop participating in an event
		Given I press the "Dejar de participar" button in the "TC-G3-PENDING-SP" event
		And the "Tu participación en el evento ha sido eliminada" message is shown
		And I press the "Detalles" button in the "TC-G3-PENDING-SP" event
		When the event information is shown
		Then The "Core Team" text is not shown

	Scenario: Register an event without required fields
		Given I press the "Crear eventos" button
		When I press the "Guardar Evento" button
		Then the "Nombre del Evento o Fecha del Evento vacía" message is shown

	@SetupParticipatingEvent @DeleteParticipatingEvent
	Scenario: See an event details
		Given I press the "Detalles" button in the "TC-G3-PENDING-SP" event
		When the event information is shown
		Then the "Lista De Participantes" message is shown

	@SetupPendingEvent @DeletePendingEvent
	Scenario: See pending events
		Given The "EVENTOS VIGENTES" text is shown
		When The current events are shown
		Then The event "TC-G3-PENDING-EVENT" is shown

	@SetupPastEvent @DeletePastEvent
	Scenario: See past events
		Given I press the eventos pasados button
		When The "EVENTOS PASADOS" text is shown
		Then The past events are shown
		And The event "TC-G3-PAST-EVENT" is shown

	@SetupPendingEvent
	Scenario: Edit an events information
		Given I press the "Detalles" button in the "TC-G3-PENDING-EVENT" event
		And the event information is shown
		And I press the "Editar" button
		When I enter the new event name and descripton as shown below
			| Name:        | Edited By Automated Test |
			| Description: | Edited By Automated Test |
		And I press the "Guardar Cambios" button
		Then the "Evento Actualizado" message is shown
		And The event "description" changes to "Edited By Automated Test"
		And The event "name" changes to "Edited By Automated Test"

	@DeleteEventoNuevo
	Scenario: Create an event
		Given I press the "Crear Evento" button
		And I enter the name and date as shown below
			| Name: | EventoNuevo |
			| Date: | 22/12/2022  |
		When I press the "Guardar Evento" button
		Then the "Evento Guardado" message is shown
		And the "EventoNuevo" event is shown

	@SetupPendingEvent
	Scenario: Delete an event
		Given I press the "Eliminar" button in the "TC-G3-PENDING-EVENT" event
		When I press the "Confirmar" button
		Then The event "TC-G3-PENDING-EVENT" is not shown
