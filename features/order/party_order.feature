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
    And Add products to my guests
    Then I verify my party order totals,Retail:"$210.00",Volume:"$210.00",Subtotal:"$210.00",ShipHand:"$20.80",Tax:"$17.50",Total:"$248.30"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$210.00" Hostess Half Price "1 / 0" Hostess Credit "$25.00 / $25.00" Exclusive Hostess Offer "1 / 0" Hostess Overage "0"

  Scenario: Add Hostess Credit
    When I continue my order
    And I add a hostess credit item to my order
    Then I verify my party order totals,Retail:"$280.00",Volume:"$255.00",Subtotal:"$255.00",ShipHand:"$24.40",Tax:"$20.78",Total:"$300.18"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$210.00" Hostess Half Price "1 / 0" Hostess Credit "$25.00 / $0.00" Exclusive Hostess Offer "1 / 0" Hostess Overage "$45.00"

  Scenario: Add exclusive hostess offer
    When I continue my order
    And I add an exclusive hostess offer price item to my order
    Then I verify my party order totals,Retail:"$345.00",Volume:"$345.00",Subtotal:"$320.00",ShipHand:"$29.60",Tax:"$25.52",Total:"$375.12"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$210.00" Hostess Half Price "1 / 0" Hostess Credit "$25.00 / $0.00" Exclusive Hostess Offer "1 / 1" Hostess Overage "$45.00"

  Scenario: Add Hostess Half Price
    When I continue my order
    And I add a hostess half price item to my order
    Then I verify my party order totals,Retail:"$363.00",Volume:"$255.00",Subtotal:"$329.00",ShipHand:"$30.32",Tax:"$26.18",Total:"$385.50"
    And I verify the Party Hostess Totals Hostess Plan Base Amt "$210.00" Hostess Half Price "1 / 1" Hostess Credit "$25.00 / $0.00" Exclusive Hostess Offer "1 / 1" Hostess Overage "$45.00"



