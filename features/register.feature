Feature: Start Americas Register
  In order to register in Start's site
  As a new user
  I want to test the register form page 

   Background:
    Given I am on the StartAmericasTogetherRegistersPage

Scenario: Register on Start page with a valid fields        
    Given I fill the register fields as shown below
    | Name:            | Jaimen                        |
		| Lastname:        | Herbas                        |
    | Email:           | auto#{random_string}@test.qa  |
    | Phone:           | 76767672                      |
    | Password:        | jaime123                      |
    | Confirm password:| jaime123                      |
	When I press the submit button
	Then the "Se ha enviado un correo de confirmación al email" message is shown

  Scenario: Register on Start page with an invalid password        
    Given I fill the register fields as shown below
    | Name:            | Jaimen                        |
		| Lastname:        | Herbas                        |
    | Email:           | auto#{random_string}@test.qa  |
    | Phone:           | 76767672                      |
    | Password:        | jaimes                        |
    | Confirm password:| jaimes                        |
	Then the "La contraseña debe tener mínimo 6 caracteres y 1 número" message is shown
  And the submit button should be disabled

    Scenario: Register on Start page with an invalid mail        
    Given I fill the register fields as shown below
    | Name:            | Jaimen                        |
		| Lastname:        | Herbas                        |
    | EmailFail:       | jaime.com                     |
    | Phone:           | 76767672                      |
    | Password:        | jaime123                      |
    | Confirm password:| jaime123                      |
	Then the "Correo no válido" message is shown
  And the submit button should be disabled

    Scenario: Register on Start page with an invalid password confirm        
    Given I fill the register fields as shown below
    | Name:            | Jaimen                        |
		| Lastname:        | Herbas                        |
    | Email:           | auto#{random_string}@test.qa  |
    | Phone:           | 76767672                      |
    | Password:        | jaime123                      |
    | Confirm password:| jaime124                      |
	Then the "Las contraseñas no coinciden" message is shown
  And the submit button should be disabled