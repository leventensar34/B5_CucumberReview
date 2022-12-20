Feature: Login Test- The user should be able to login with valid credentials

  Background: Go to home page
    Given The user is on the login page


  Scenario: Positive scenario 1-user should be able to login
    When The user enters valid credentials
    Then verify "Welcome etsb5"


  Scenario: Positive scenario 2- user should be abble to login
    When The user enters with  "etsb5" and "Test12345" credentials
    Then verify "Welcome etsb5"

  Scenario Outline: Positive scenario 3- user should be abble to login
    When The user enters with  "<username>" and "<password>" credentials
    Then verify "<message>"
    Examples:
      | username | password  | message       |
      | etsb5    | Test12345 | Welcome etsb5 |

  @wip
    Scenario Outline: Positive scenario 4- user should be abble to login
      When The user enters valid username and password
      |username|<username>|
      |password|<password>|
      Then verify "<message>"
      Examples:
        | username | password  | message       |
        | etsb5    | Test12345 | Welcome etsb5 |
      #  | etsb5    | Test123+ | Welcome etsb3 |