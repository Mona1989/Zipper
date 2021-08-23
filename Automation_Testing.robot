*** Settings ***
Documentation   for the newbie

Resource         AutomateTest_resource.robot

*** Test Case ***
Open Browser and Login success
    open Browser and Login page
    Maximize Browser Window
    Input username      tomsmith
    Input Password      SuperSecretPassword!
    Click Login

Logout Success and show correct msg
    Click Logout
    Page Should Contain Element  css=#content > div > h4

Login fail with invalid password
    Input username      tomsmith
    Input Password      Password!
    Click Login
    Wait Until Element Is Visible  xpath=//*[@id="flash"]

Login fail with invalid username
     Input username      tomholland
     Input Password      Password!
     Click Login
     Wait Until Element Is Visible  xpath=//*[@id="flash"]