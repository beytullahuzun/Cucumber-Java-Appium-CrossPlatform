Feature: MoneyLover Mobile Automation Test
  Scenario Outline: Sign Up1
    Given user taps on the "NEW_TO_MONEY_LOVER.SIGN_IN_AND_REGISTRATION_PAGE" button
    When user enters "<ValidE-mailAddress>" to "EMAIL.REGISTER_PAGE" text box
    And user enters "<ValidPassword>" to "PASSWORD.REGISTER_PAGE" text box
    And user taps on the "REGISTER.REGISTER_PAGE" button
    And user taps on the "CONTINUE.STORAGE_PERMISSION_PAGE" button
    And user taps on the "ALLOW.STORAGE_PERMISSION_PAGE" button
    And user taps on the drop-down "CURRENCY_LIST.REGISTER_PAGE" list
    And user scrolls down the "CURRENCY_LIST_PAGE" list
    And user selects "<currency>"
    And user taps on the "CONTINUE_CURRENCY" button
    And user enters "<WalletName>" to "<WALLET_NAME.WALLET_CREATION_PAGE>" text box
    And user taps on the "CONTINUE.WALLET_CREATION_PAGE" button
    And user enters "<StartBalance>" to "START_BALANCE.BALANCE_CREATION_PAGE" text box
    And user taps on the "CONTINUE.BALANCE_CREATION_PAGE" button
    And user taps on the "DONE.FINISHING_UP_PAGE" button
    Then the "MAIN_PAGE" opens

    Examples:
      | ValidE-mailAddress        | ValidPassword | currency             | WalletName | StartBalance |
      | xyzt1234567890@yahoo.com    | aaa111.       | United States Dollar | Wallet1    | 100          |
      | abc1234567890@gmail.com     | bbb222,       | Pound                | Wallet2    | 200          |
      | ABC1234567890@hotmail.com   | ccc333*       | Euro                 | Wallet3    | 300          |
      | 1234567890xyz@icloud.com    | ddd444-       | Yen                  | Wallet4    | 400          |
