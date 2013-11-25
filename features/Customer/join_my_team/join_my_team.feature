Feature: Join My Team
  As a customer
  I want the ability to join a consultants team

Background:
  Given I am on my consultants replicated site

  Scenario: Join Her Team
    When I Join Her Team
    Then I should see "Enrollment Completed"
    And I should see "Congratulations!"