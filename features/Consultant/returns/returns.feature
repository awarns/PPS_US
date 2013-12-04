Feature: Processing Returns in PPS

  As a consultant
  I want the ability to process returns

  Background:
    Given I am on Her Virtual Office


  Scenario: Place a Refund as a Consultant. Process as an Employee
    When I mark an order as shipped so it can be returned
    And I Return the Item as a Refund



