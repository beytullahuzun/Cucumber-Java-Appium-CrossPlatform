Feature: MoneyLover Mobile Automation Test
  Scenario: Sign Up1
    Given user downloads the MoneyLover app
    And the app icon appears on the menu page of the device
    When user clicks on the MoneyLover icon on the mobile device
    Then the app runs
    And registration page opens
    And "new to money lover" button appears
    When clicks on the "new to money lover" button
    Then notification pop-up opens
    When clicks on "don't allow" button on notification page
    Then register page opens
    Given user clicks "SUBMIT" button

  Scenario Outline: Sign Up2
    Given user on the register page
    When user enters "<ValidE-mailAddress>"
    And user creates a "<ValidPassword>" that meets specified password credentials
    And user clicks "REGISTER" button
    Then account configuration options open
    Examples:
    | ValidE-mailAddress | ValidPassword |
    | xyz@yahoo.com      | aaa111.       |
    | abc@gmail.com      | bbb222,       |
    | ABC@hotmail.com    | ccc333*       |
    | 1234@icloud.com    | ddd444-       |

  Scenario Outline: Sign Up3
    Given user on the account configuration options page
    When user chooses "<currency>"
    And user clicks on the "continue" button
    Then wallet options page opens
    When user clicks on the "continue" button wallet options page
    Then finishing up page opens
    When user clicks on the "done" button
    Then "transaction page" opens

    Examples:
    | currency |
    | United States Dollar |
    | Pound                |
    | Euro                 |

  Scenario: Sign Out
    Given user on the "transactions" page
    When user clicks on the "More" button
    Then "More" menu opens
    When user clicks on "My Account" button
    Then "My Account" menu opens
    When user clicks on "Sign Out"
    Then "Notice" warning pops-up
    When user clicks on "Sign out" button
    Then the registration page opens

  Scenario Outline: Successful Login With Valid Username and Valid Password
    Given user in the login page
    When user enters "<ValidUsername>"
    And user enters "<ValidPassword>"
    And user clicks on the submit button
    Then main page opens
    And balance appears
    Examples:
      | ValidUsername | ValidPassword |
      | xyz@yahoo.com      | aaa111.       |
      | abc@gmail.com      | bbb222,       |
      | ABC@hotmail.com    | ccc333*       |
      | 1234@icloud.com    | ddd444-       |

  Scenario Outline: Failed Login With Valid Username and Invalid Password
    Given user in the login page
    When user enters "<ValidUsername>"
    And user enters "<InValidPassword>"
    And user clicks on the submit button
    Then error page opens
    And invalid username or password warning appears
    And try again buttons activates
    Examples:
      | ValidUsername   | InValidPassword |
      | xyz@yahoo.com      | aaa       |
      | abc@gmail.com      | bbb       |
      | ABC@hotmail.com    | 333*       |
      | 1234@icloud.com    | 444-       |

  Scenario Outline: Failed Login With Invalid Username and Valid Password
    Given user in the login page
    When user enters "<InValidUsername>"
    And user enters "<ValidPassword>"
    And user clicks on the submit button
    Then error page opens
    And invalid username or password warning appears
    And try again buttons activates
    Examples:
      | InValidUsername   | ValidPassword |
      | xyzyahoo.com      | aaa111.       |
      | abc@gmail         | bbb222,       |
      | ABC@.com          | ccc333*       |
      | @icloud.com       | ddd444-       |

  Scenario Outline: Failed Login With Invalid Username and Invalid Password
    Given user in the login page
    When user enters "<InValidUsername>"
    And user enters "<InValidPassword>"
    And user clicks on the submit button
    Then error page opens
    And invalid username or password warning appears
    And try again buttons activates
    Examples:
      | InValidUsername | InValidPassword |
      | AAAa1111        | 000000        |
      | BBBb2222        | aaaaaa        |
      | CCCc3333        | bbbbbb        |
      | DDDd4444        | ******        |


      | #@%^%#$@#$@#.com					| 123456      	|
      | \Joe Smith <email@example.com>	| 123456      	|
      | email.example.com		  			| 123456      	|
      | email@example@example.com			| 123456      	|
      | .email@example.com         		| 123456      	|
      | email.@example.com          		| 123456      	|
      | email..email@example.com     		| 123456      	|
      | あいうえお@example.com				| 123456      	|
      | email@example.com (Joe Smith)		| 123456      	|
      | email@example                 	| 123456      	|
      | email@-example.com             	| 123456      	|
      | email@example.web              	| 123456      	|
      | email@111.222.333.44444        	| 123456      	|
      | email@example..com             	| 123456      	|
      | Abc..123@example.com           	| 123456      	|

