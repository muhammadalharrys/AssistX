Feature: AssistX Functionality

  #positivetest #validcredential #login
  Scenario Outline: Login with valid credentials
    Given I am on the login page
    When I enter email "<email>"
    And I enter password "<password>"
    And I click the login button
    Examples:
      | email                 |   password   |
      | waniadmin@yopmail.com | Password123@ |


  #negativetest #invalidemail #login
  Scenario Outline: Login with invalid email
    Given I am on the login page
    When I enter email "<email>"
    And I enter password "<password>"
    And I click the login button
    Examples:
      | email                  |   password   |
      | waniadmin@yopmail. com | Password123@ |

  
  #negativetest #invalidpassword #login
  Scenario Outline: Login with invalid password
    Given I am on the login page
    When I enter email "<email>"
    And I enter password "<password>"
    And I click the login button
    Examples:
      | email                 |   password   |
      | waniadmin@yopmail.com | Password 123@ |

  
  #negativetest #withoutcredentials #login
  Scenario Outline: Login with invalid password
    Given I am on the login page
    And I click the login button
  

  #negativetest #forgetpassword #withoutemail
  Scenario Outline: forget password with invalid email
    Given I am on the login page
    When I click the forget password button
    And I click button email password reset link
  

  #negativetest #forgetpassword #invalidemail
  Scenario Outline: forget password with invalid email
    Given I am on the login page
    When I click the forget password button
    Then I enter email "<email>"
    And I click button email password reset link
    Examples:
    |         email         |
    | waniadmin@yopmail. com|