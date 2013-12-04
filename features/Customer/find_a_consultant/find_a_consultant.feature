Feature: Find a Consultant

  As a customer
  I want to find a consultant
  because i either forgot mine or do not have one

  Background:
    Given I am on the Connect with a Consultant Page

  Scenario: I have a consultant search by email
    When I find a consultant using my email address
    Then I should see "YOUR CONSULTANT"

  Scenario: Locate Consultant by her name
    When I find a consultant using her name
    And I should see "Jenny Hillenburg"

  Scenario: Verify still cookied to consultant
    When I find a consultant using her name
    And I should see "Jenny Hillenburg"
    When I am on the Connect with a Consultant Page
    And I should see "Jenny Hillenburg"

  Scenario: I need a consultant
    When I use I need a consultant
    And I should not see "Jenny Hillenburg"

  Scenario: Switching Consultants and nav to site just one time
    When I find a consultant using her name
    Then I should see "Jenny Hillenburg"
    And I switch consultants as a one time opportunity
    Then I should not see "Jenny Hillenburg"
    And I am on the Connect with a Consultant Page
    Then I should see "Jenny Hillenburg"

  Scenario: Switching Consultants and update preferred Consultant
    When I find a consultant using her name
    Then I should see "Jenny Hillenburg"
    And I switch consultants permanently
    Then I should not see "Jenny Hillenburg"
    And I am on the Connect with a Consultant Page
    Then I should not see "Jenny Hillenburg"

