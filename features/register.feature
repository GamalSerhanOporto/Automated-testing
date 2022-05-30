Feature: Start Americas Register
  In order to register in Start's site
  As a new user
  I want to test the register form page 


Scenario: Register on Guru99 page with a valid email        
    Given I am on the StartAmericasTogetherRegistersPage
    And I enter name and lastname
    And I enter my email and my desired password twice
    And I enter my phone number
	When I press the submit button
	Then the "Se ha enviado un correo de confirmación al email" message is shown