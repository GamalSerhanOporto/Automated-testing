Feature: Start Americas profile funcionality
  In order to see how the user profile works
  As a coreteam user
  I want to test the profile funcionality

Background:
Given I am on the StartAmericasTogetherHomepage
And I enter my user email and password as listed below
  | Email:           | coreteam@gmail.com  |
  | Password:        | 123456                |
When I press the sub button

@SetupParticipatingEvent @DeleteParticipatingEvent
Scenario: Login with coreteam user and validate that in my profile page i can see the events in which i'm participating
Given I click on the account section in the navbar
Then I can see the content in the events table
And I'm able to see at least one event in the table