*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify login with blank field and “Submit” button is clicked.

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[2]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[2]
  Wait Until Element Is Visible  //*[@id="signin"]/div[2]/h2/b/center
  Element Should Be Disabled  //*[@id="signin"]/div[2]/form/center[1]/button
  

