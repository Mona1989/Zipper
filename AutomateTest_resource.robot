*** Settings ***
Documentation   for the newbie
Library      Selenium2Library

*** Variable ***
${server}       http://the-internet.herokuapp.com/login
${browser}      chrome
${delay}        0.5
${error}        
${Blank}    


*** Keywords ***
open Browser and Login page
   
   Open Browser  ${server}  ${browser}
   Set Selenium Speed  ${delay}
   #CMS page should be open

CMS page should be open
      Log To Console  Title
      Title should be   APThai CMS | Login

Input username
      [Arguments]  ${username}
      Input Text  name=username  ${username}

Input Password
      [Arguments]  ${password}
      Input Text  id=password  ${password}

Remember me  
      Select Checkbox  id=remember

Click Login
      Click Element  css=#login > button
      #Click Button    //button[.//text() = 'Login']

Click Logout
      Click Element  css=#content > div > a > i