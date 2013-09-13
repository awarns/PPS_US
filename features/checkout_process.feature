Feature: Completing the checkout process

  The final step of the checkout process is to
  collect some information about the adopter

  Background:
    Given I am on Her Virtual Office

  Scenario: Login with Valid ID and Password
    When I Login with Proper Credentials

  Scenario: Login with Invalid ID
    When I Login with an Invalid ID
    Then I Should see the Login Page Error Message

  Scenario: Login with Invalid Password
    When I Login with an Invalid Password
    Then I Should see the Login Page Error Message

  Scenario: Address is required when checking out
    When I attempt to checkout without an address
    Then I should see the error message "Address can't be blank"

  Scenario: Adopter should be presented with payment options
    When I navigate to the checkout page
    Then I should see the following payment options:
      | pay_type       |
      | Purchase order |
      | Credit card    |
      | Check          |

  Scenario: Thank you message should be displayed when adoption is complete
    When I complete the adoption of a puppy
    Then I should see "Thank you for adopting a puppy"