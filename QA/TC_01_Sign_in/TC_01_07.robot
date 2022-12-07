*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify if “Create one here” navigates to Sign up page

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[2]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[2]
  Wait Until Element Is Visible  //*[@id="signin"]/div[2]/h2/b/center
  Sleep  10s
  Click Element  //*[@id="signin"]/div[2]/form/center[2]/h6/a
  Wait Until Element Is Visible  //*[@id="signup"]/div[1]/h2/b/center

