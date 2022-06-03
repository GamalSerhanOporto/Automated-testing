Feature: Start Americas login
  In order to enter Start's site
  As a registered user
  I want to test the login 

  Background:
    Given I am on the StartAmericasTogetherHomepage

  Scenario: Login the user voluntatatio on site SUT      
	Given I enter my user email and password as listed below
  | Email:           | voluntario@gmail.com  |
  | Password:        | 123456                |
	When I press the sub button
  Then the "VV" user profile is shown
  And I press the user profile button
  Then I'm able to see the "Logout" button


  Scenario: Login a user with invalid password on site SUT       
	Given I enter my user email and password as listed below
  | Email:           | voluntario@gmail.com  |
  | Password:        | 123456x                |
	When I press the sub button
  Then the "Correo o contraseña inválidos" message is shown