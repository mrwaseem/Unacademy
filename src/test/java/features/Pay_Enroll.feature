Feature: Payment and Enroll

Background: 
Given I Navigate to Login Page

@PayAndEnroll
Scenario Outline: [UN-001] Verify functionality The Components.
When I Enter "<Mobile Number>" and click on Login button
Then Login Page should be display
And I Enter valid OTP and click on Verify OTP button
Then I Navigated to Home Page
And I Verify Get subscription button is enabled
And I click on Get subscription button
Then I Verify Select Plus button and Select Iconic button is enabled 
And I click on Select Plus button
Then I Verify working of all the components in the subscirbe page
And I click on Proceed to Pay button
Then I Verify working of all the components in the payment Page
Examples: 
|Mobile Number	|
|8496817175			|

@PayAndEnroll
Scenario Outline: [UN-002] User should not be able to enroll to course with invalid CVV or insufficent amount.
When I Enter "<Mobile Number>" and click on Login button
Then Login Page should be display
And I Enter valid OTP and click on Verify OTP button
Then I Navigated to Home Page
And I click on Get subscription button and click on select Plus button
And I select "12 months" radio button and click on Proceed to pay button
Then I Navigated to Payment method page
And I choose a payment method as Card
And I Enter valid Card number "<Card number>" MM "<MM>" YY "<YY>" CVV "<CVV>" Name on Card "<Name On Card>" and click on Pay button
Then I Verify i Navigated to Authenticate Transaction Page

Examples: 
|Mobile Number	| Card number					 |	MM	|		YY	|		CVV	|		Name On Card	|
|8496817175			| 4389 7601 2605 4198	 |	01	|		30	|		974	|		Syed Waseem		|

@PayAndEnroll
Scenario Outline: [UN-003] User should not be able to enroll to course if user enter invalid card number.
When I Enter "<Mobile Number>" and click on Login button
Then Login Page should be display
And I Enter valid OTP and click on Verify OTP button
Then I Navigated to Home Page
And I click on Get subscription button and click on select Plus button
And I select "12 months" radio button and click on Proceed to pay button
Then I Navigated to Payment method page
And I choose a payment method as Card
And I Enter invalid Card number "<Card number>" MM "<MM>" YY "<YY>" CVV "<CVV>" Name on Card "<Name On Card>"
Then I Verify Pay button is disabled

Examples: 
|Mobile Number	| Card number					 |	MM	|		YY	|		CVV	|		Name On Card	|
|8496817175			| 4389 7601 5062 4198	 |	01	|		30	|		479	|		Syed Waseem		|

@PayAndEnroll
Scenario Outline: [UN-004] User should not be able to enroll to course if user enter invalid card Details.
When I Enter "<Mobile Number>" and click on Login button
Then Login Page should be display
And I Enter valid OTP and click on Verify OTP button
Then I Navigated to Home Page
And I click on Get subscription button and click on select Plus button
And I select "12 months" radio button and click on Proceed to pay button
Then I Navigated to Payment method page
And I choose a payment method as Card
And I Enter Card number "<Card number>" MM "<MM>" YY "<YY>" CVV "<CVV>" Name on Card "<Name On Card>" and click on Pay button
Then I Verify "Transaction declined" message is displayed

Examples: 
|Mobile Number	| Card number					 |	MM	|		YY	|		CVV	|		Name On Card	|
|8496817175			| 4389 7601 2605 4198	 |	10	|		28	|		479	|		Syed Waseem		|

@PayAndEnroll
Scenario Outline: [UN-005] Net Banking.
When I Enter "<Mobile Number>" and click on Login button
Then Login Page should be display
And I Enter valid OTP and click on Verify OTP button
Then I Navigated to Home Page
And I click on Get subscription button and click on select Plus button
And I select "12 months" radio button and click on Proceed to pay button
Then I Navigated to Payment method page
And I choose a payment method as Net Banking 
And I select "Canara Bank" and I click on Pay button
Then I Verify I Navigate to Canara Bank Net Banking Page

Examples: 
|Mobile Number	| 
|8496817175			|




