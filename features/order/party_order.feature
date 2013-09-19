Feature: Party Order as a Consultant

  As a consultant
  I want to place a party Order

Background:
  Given I am on Her Virtual Office

  Scenario: Cancel Orders
    When I cancel my unsubmitted orders

  Scenario: Setup Party Order
    When I setup a party order
    Then I should see "Order Details"

  Scenario: Add Guests to Party
    When I continue my order
    And Add a ship to host guest to my party
    And Add a direct ship guest to my party
    Then I should see "Order Details"

  Scenario: Add items to Party Order
    When I continue my order
    And Add products for my ship to host guest



