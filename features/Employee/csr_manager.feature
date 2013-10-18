Feature: CSR Manager

  As an employee
  I want to edit and view a consultants info
  in the CSR manager

  Background:
    Given I am on the Employee Admin site

  Scenario: Edit Profile
    When I edit a consultants profile
    Then I should see "has been updated"

  Scenario: View Website
    When I view a consultants website
    Then I should see "YOUR CONSULTANT"

  Scenario: Send Email
    When I send an email as a CSR
    Then I should see "Email sent successfully"

  Scenario: View Subscription History
    When I view a consultants subscription history
    Then I should see "Orders for Subscription"

  Scenario: View Commissions Details as Employee
    When I view a consultants commission details
    Then I should see "Click Here For Details"
    And I should see "Rebates"

  Scenario: View Personal Volume Orders
    When I view a consultants personal volume via orders
    Then I should see "Orders with Personal Volume"
    
  Scenario: View Accounts
    When I view a consultants accounts info
    Then I should see "+ Add An Adjustment"

  Scenario: Add Notes
    When I add a note to a consultant
    Then I test source tree
    And Test 2
    And Test 3







