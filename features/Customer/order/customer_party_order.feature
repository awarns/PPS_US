Feature: Customer Party Order

  As a customer
  I want the ability to place a Customer Party Order
  As i will not be able to attend the consultant's party

  Background:
    Given I am on my consultants replicated site

  Scenario: Cancel Event
    When I am on Her Virtual Office
    When I cancel my open events
    Then I should see "You have not created any events."

  Scenario: Setup Event
    When I am on Her Virtual Office
    When I Create a Party Event
    Then I should see "Invitations"

  Scenario: Add Items to my Cart ship to host
    When I add items to my party cart for ship to host
    Then I verify Order Totals, Product: "$65.00", Tax: "$4.91", Shipping : "$5.20", Total: "$75.11"

  Scenario: Add Items to my Cart direct ship
    When I add items to my party cart for direct ship
    Then I verify Order Totals, Product: "$65.00", Tax: "$5.19", Shipping : "$9.20", Total: "$79.39"

  Scenario: Remove Items from Cart
    When I remove items from my party cart
    Then I should see "Product Total: $40.00"

  Scenario: Update Quantity from Cart
    When I update the quantity of an item in my party customer cart
    Then I should see "Product Total: $105.00"

  Scenario: Update Personalization from Cart
    When I update the personalization options of an item in my party customer cart
    Then I should see "Product Total: $25.00"

  Scenario: Checkout with 31Gives on Order - Ship to Host
    When I submit a customer party order with ship to host order with 31gives
    Then I should see "Outstanding Balance: $76.00"
    And I submit my customer order
    Then I should see "Thank You"
    And I should see "Processing Completed!"

  Scenario: Checkout with 31Gives on Order - Direct Ship
    When I submit a customer party order with direct ship order with 31gives
    Then I should see "Outstanding Balance: $80.00"
    And I submit my customer order
    Then I should see "Thank You"
    And I should see "Processing Completed!"

  Scenario: Delete Payment
    When I delete a payment from my party customer order
    Then I should see "Payments: $0.00"

  Scenario: Verify Order as Consultant and Submit
    When I am on Her Virtual Office
    And I create my party order as a consultant
    Then I verify my party order totals,Retail:"$131.50",Volume:"$130.00",Subtotal:"$131.50",ShipHand:"$14.40",Tax:"$10.10",Total:"$156.00"
    And I submit my party event order


