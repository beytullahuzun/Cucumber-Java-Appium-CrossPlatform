Feature: MoneyLover Mobile Customer Onboarding Test Automation
	
	Background: The app is installed to the device or emulator and user launches the app, 
	and buttons for new user and returning user appears
		Given user launches the application
		Then button "NEW_TO_MONEY_LOVER" should be displayed and enabled
		Then button "ALREADY_USING_MONEY_LOVER" should be displayed and enabled

	Scenario: New Customer Onboarding	
	New user onboards the app and follows instructions to get registered.
		Given user clicks "NEW_TO_MONEY_LOVER" button
		When user clicks "OK" button
		Then label "REGISTER_WITH_EMAIL" should be displayed and enabled
 
 
	Scenario Outline: New Customer Onboarding	
	New user onboards the app and follows instructions to get registered.
		Given user clicks "NEW TO MONEY LOVER" button
		Then label "REGISTER_WITH_EMAIL" should be displayed and enabled
		When user enters "<ValidE-mailAddress>" to "EMAIL" area
		And user enters "<ValidPassword>" to "SIGNIN_PASSWORD" area
		And user enters "<ValidPassword>" to "PASSWORD" area
		And user clicks "REGISTER" button

		Examples:
			| ValidE-mailAddress | ValidPassword |
			| xyz@yahoo.com      | aaa111.       |
			| abc@gmail.com      | bbb222,       |
			| ABC@hotmail.com    | ccc333*       |
			| 1234@icloud.com    | ddd444-       |

	@Tag
	Scenario Outline: New Customer Onboarding attempt with Invalid email address
	New user onboards the app and follows instructions to get registered.
		Given user clicks "NEW_TO_MONEY_LOVER" button
		Then label "REGISTER_WITH_EMAIL" should be displayed and enabled
		When user enters "<InvalidE-mailAddress>" to "EMAIL" area
		And user enters "<ValidPassword>" to "SIGNUP_PASSWORD" area
		And user clicks "REGISTER" button
		Then user should not be allowed to leave "REGISTER_WITH_EMAIL" view

		Examples:
			| InvalidE-mailAddress 				| ValidPassword |
			| @example.com		    			| 123456      	|
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

