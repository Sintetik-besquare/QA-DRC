*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify login with a invalid email and invalid password

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[2]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[2]
  Wait Until Element Is Visible  //*[@id="signin"]/div[2]/h2/b/center
  Input Text  //*[@id="uname-input"]  nottest@yahoo.com
  Input Password  //*[@id="pw-input"]  Abcd123!
  Click Button  //*[@id="signin"]/div[2]/form/center[1]/button
  Sleep  10s 
  Alert Should Be Present

