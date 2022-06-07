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
		And I press the 'eventos' button

	Scenario: Register an event without required fields
		Given I press the "Crear Evento" button
		When I press the "Guardar Evento" button
		Then the "Nombre del Evento o Fecha del Evento vacía" message is shown