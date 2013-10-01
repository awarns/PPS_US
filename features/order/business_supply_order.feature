Feature: Business Supply Order

  As a consultant
  I want to place a business supply order

Background:
  Given I am on Her Virtual Office

  Scenario: Add Items to Order
    When I add an item to a business supply order
    Then I should see "$64.80"

  Scenario: Place Order
    When I continue my order
    And Business Supply Checkout
