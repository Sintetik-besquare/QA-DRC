*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify “save user profile” button is not visible while user profile is in normal state

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[2]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[2]
  Wait Until Element Is Visible  //*[@id="signin"]/div[2]/h2/b/center
  Input Text  //*[@id="uname-input"]  try@yahoo.com
  Input Password  //*[@id="pw-input"]  Abcd1234!
  Click Button  //*[@id="signin"]/div[2]/form/center[1]/button
  Wait Until Element Is Visible  //*[@id="balance-amount"]/font
  Click Button  //*[@id="header"]/div/div[3]/button
  Click Element  //*[@id="header"]/div/div[4]/ul/li[1]
  Click Element  //*[@id="root"]/div/div[2]/div[1]/button[1]
  Element Should Be Visible  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[1]/center
  Page Should Not Contain  Save User Profile