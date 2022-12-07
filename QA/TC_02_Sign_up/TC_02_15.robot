*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify if “sign in” navigates to Sign in page.

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[1]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[1]
  Wait Until Element Is Visible  //*[@id="signup"]/div[1]/h2/b/center
  Sleep  5s
  Click Element  //*[@id="signup"]/div[1]/form/center[2]/h6/a
  Sleep  5s
  Wait Until Element Is Visible  //*[@id="signin"]/div[2]/h2/b/center

