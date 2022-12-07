*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify if “terms & conditions” navigates to Error page.

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[1]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[1]
  Wait Until Element Is Visible  //*[@id="signup"]/div[1]/h2/b/center
  Sleep  3s
  Click Element  //*[@id="signup"]/div[1]/form/div[4]/h6/a
  Sleep  8s
  Switch Window  new
  Wait Until Element Is Visible  //*[@id="root"]/div/div[3]/div[7]/div[1]