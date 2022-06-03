Feature: Start Americas users funcionality
  In order to see how user sight works
  As a lider or coreteam user
  I want to test the users funcionality

Background:
Given I am on the StartAmericasTogetherHomepage
And I enter my user email and password as listed below
  | Email:           | lider@gmail.com  |
  | Password:        | 123456                |
When I press the sub button

@SetupUserCreation
Scenario: Login with a piviliged user and validate that the users list is visible
Given I click on the users section in the navbar
Then I can see the content in the table
And I'm able to see at least one user in the table

@SetupUserCreation
Scenario: Login with a piviliged user and validate that using the 
filter by lastname i can found that the first user has the lastname Aliss 
Given I click on the users section in the navbar
When I press the criteria button
And I filter by lastname
And I search for the lastname "Aliss"
Then The user "Noel Aliss" is shown