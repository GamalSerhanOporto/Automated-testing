Feature: Start Americas login
  In order to enter Start's site
  As a registered user
  I want to test the login 

  Scenario: Login a user on site SUT      
	Given I am on the StartAmericasTogetherHomepage
	And I enter my email and password
	When I press the sub button
    Then the "VV" user profile is shown

     Scenario: Login a user on site  SUT       
	Given I am on the StartAmericasTogetherHomepage
	And I enter my email and an incorrect password
	When I press the sub button
    Then the "Correo o contraseña inválidos" message is shown