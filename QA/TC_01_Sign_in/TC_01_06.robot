*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify if eye icon in password field toggles password visibility

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[2]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[2]
  Wait Until Element Is Visible  //*[@id="signin"]/div[2]/h2/b/center
  Input Password  //*[@id="pw-input"]  abc123
  Page Should Not Contain  abc123
  Sleep  5s
  Click Element  //*[@id="password-icon"]  
  # Element Should Contain  //*[@id="pw-input"]  abc123
  
  
