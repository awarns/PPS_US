Feature: Party Event

  As a consultant
  I want to setup a Party Event
  and invite guests

Background:
  Given I am on Her Virtual Office

  Scenario: Enter Event Details for Party Event
    When I Create a Party Event
    Then I should see "Invitations"

  Scenario: Enter Invitations Information
    When I enter invitation information
    Then I should see "New Guest"

  Scenario: Add Guest to Party
    When I add a guest to a party
    Then I should not see "No Guests have been invited to this event."

  Scenario: Edit Guest on Party
    When I edit a guest invited to a party
    Then I should see a Yes RSVP

