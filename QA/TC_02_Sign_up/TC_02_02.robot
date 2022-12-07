*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify checkbox clickable

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[1]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[1]
  Wait Until Element Is Visible  //*[@id="signup"]/div[1]/h2/b/center
  sleep  10s
  Click Element  //*[@id="signup"]/div[1]/form/div[4]/input
  Checkbox Should Be Selected  //*[@id="signup"]/div[1]/form/div[4]/input