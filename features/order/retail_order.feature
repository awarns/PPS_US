Feature: Retail Order

  As a consultant
  I want to place a retail order

Background:
  Given I am on Her Virtual Office


  Scenario: SetUp Retail Order
    When I setup a retail order
    Then I should see "Shop Online"

  Scenario: Add product to cart
    When I continue my order
    And I Add product "3000" to my cart
    And I personalize using Embroidery
    And I Add product "3244" to my cart
    And I personalize using Icon-It No Text
    Then I verify Order Totals, Product: "$72.00", Tax: "$5.52", Shipping : "9.76", Total: "$87.28"

  Scenario: Remove Item From Cart
    When I continue my order
    And I Remove Item "1" from my cart
