Feature: AssistX Functionality

  #positivetest #validcredential #login
  Scenario Outline: Login with valid credentials
    Given I am on the login page
    When I enter email "<email>"
    And I enter password "<password>"
    And I click the login button
    Examples:
      |    TCID    | email                 |   password   |
      | TC-ID-001  | waniadmin@yopmail.com | Password123@ |


  #negativetest #invalidemail #login
  Scenario Outline: Login with invalid email
    Given I am on the login page
    When I enter email "<email>"
    And I enter password "<password>"
    And I click the login button
    Examples:
      |   TCID   | email                  |   password   |
      |TC-ID-002 | waniadmin@yopmail. com | Password123@ |

  
  #negativetest #invalidpassword #login
  Scenario Outline: Login with invalid password
    Given I am on the login page
    When I enter email "<email>"
    And I enter password "<password>"
    And I click the login button
    Examples:
      |   TCID    | email                 |   password   |
      | TC-ID-003 | waniadmin@yopmail.com | Password 123@ |

  
  #negativetest #withoutcredentials #login
  Scenario Outline: Login without credentials
    Given I am on the login page
    And I click the login button
    Examples:
      |   TCID  |
      |TC-ID-004|

  #negativetest #forgetpassword #withoutemail
  Scenario Outline: forget password without email
    Given I am on the login page
    When I click the forget password button
    And I click button email password reset link
    Examples:
      |   TCID  |
      |TC-ID-005|

  #negativetest #forgetpassword #invalidemail
  Scenario Outline: forget password with invalid email
    Given I am on the login page
    When I click the forget password button
    Then I enter email "<email>"
    And I click button email password reset link
    Examples:
      |   TCID    |         email         |
      | TC-ID-006 | waniadmin@yopmail. com|


  #negativetest #forgetpassword #specialcharacter
  Scenario Outline: forget password with special character
    Given I am on the login page
    When I click the forget password button
    Then I enter email "<email>"
    And I click button email password reset link
    Examples:
      |   TCID    |   email   |
      | TC-ID-007 | !@#$%^&*  |


  #negativetest #forgetpassword #numeric
  Scenario Outline: forget password with numeric
    Given I am on the login page
    When I click the forget password button
    Then I enter email "<email>"
    And I click button email password reset link
    Examples:
      |   TCID    |   email    |
      | TC-ID-008 | 123456789  |


  #positivetest #forgetpassword #validemail
  Scenario Outline: forget password with valid email
    Given I am on the login page
    When I click the forget password button
    Then I enter email "<email>"
    And I click button email password reset link
    Examples:
      |   TCID    |        email           |
      | TC-ID-009 | waniadmin@yopmail.com  |


  #positivetest #eyepass #login
  Scenario Outline: open and close eye pass
    Given I am on the login page
    And I enter password "<password>"
    Then I click eyepass
    Examples:
      |   TCID  |  password  |
      |TC-ID-010| loremipsum |