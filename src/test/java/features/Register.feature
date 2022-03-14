Feature: Register Functionality

Background:
Given I Navigate to Login Page

@Lavanya @Register
Scenario Outline: To validate user can not register with invalid OTP
When I Click on crete your account
And I Enter valid "<Mobile Number>" and click on continue button
And I Select Age group and click on continue button
And I Enter OTP "<OTP>" Name "<Name>" Email "<Email>"
And I Select State of residence
And I Select Privacy Policy option
And I Click on Submit button
Then I Verify This OTP is not valid message is displayed

Examples:
|Mobile Number	|	OTP				|	Name			|	Email								|
|9060480980			|	879027		|	Lavanya		|	lavanya@gmail.com		|

@Lavanya @Register
Scenario Outline: To validate user can not register with invalid Email
When I Click on crete your account
And I Enter valid "<Mobile Number>" and click on continue button
And I Select Age group and click on continue button
And I Enter OTP "<OTP>" Name "<Name>" Email "<Email>"
And I Select State of residence
And I Select Privacy Policy option
And I Click on Submit button
Then I Verify Email is not valid message is displayed

Examples:
|Mobile Number	|	OTP				|	Name			|	Email								|
|9060408988			|	879027		|	Lavanya		|	lavanya							|



