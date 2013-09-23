Feature: Downline Report

  As a consultant
  I want to Run My downline report
  To see my downline information

Background:
  Given I am on Her Virtual Office


  Scenario: Run Downline in List View
    When I run my downline report in "List View"
    Then I should see my List View downline report

  Scenario: Run Downline in Team View