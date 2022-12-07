*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify navigation to Sign in page

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[2]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[2]
  Wait Until Element Is Visible  //*[@id="signin"]/div[2]/h2/b/center


