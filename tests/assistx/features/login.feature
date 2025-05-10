Feature: Login Functionality

  Scenario Outline: Login with different credentials
    Given I am on the login page
    When I enter username "<username>"
    And I enter password "<password>"
    And I click the login button
    Then I should be logged in successfully

    Examples:
      | username | password    |
      | testuser | password123 |