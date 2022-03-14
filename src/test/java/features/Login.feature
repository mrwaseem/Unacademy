#Feature: Login Functionality

#@login @farzana
#Scenario: To validate registered user can login
#Given User should navigate to login page
#When user enter valid mobile number
#And click on login button
#And enter valid six digit OTP and click on verify OTP button
#Then User profile should be displayed

#@login @farzana
#Scenario: To validate registered user can login
#Given User should navigate to login page
#When user enter valid mobile number
#And click on login button
#And enter invalid six digit OTP and click on verify OTP button
#Then error message should be displayed

#@login @farzana
#Scenario: To validate unregistered user can login
#Given User should navigate to login page
#When user enter valid unregistered mobile number
#And click on login button
#Then User should be redirected to create account page

#@login @farzana
#Scenario: To validate ContinueWithEmail button
#Given User should navigate to login page
#When user clicks on continue with Email
#When user enters registered Email address
#And click on login button 
#And enter valid six digit OTP and click on verify OTP button
#Then  User profile should be displayed

#@login @farzana
#Scenario: To validate ContinueWithEmail button
#Given User should navigate to login page
#When user clicks on continue with Email
#When user enters registered Email address
#And click on login button 
#And enter invalid six digit OTP and click on verify OTP button
#Then error message should be displayed

#@login @farzana
#Scenario: To validate ContinueWithEmail button
#Given User should navigate to login page
#When user clicks on continue with Email
#When user enters unregistered Email address
#And click on login button 
#Then error message should be displayed for unregistetred Email 