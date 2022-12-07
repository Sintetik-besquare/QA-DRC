*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify if accepting logout redirects user to trade page

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
  Element Should Be Visible  //*[@id="header"]/div/div[4]/ul/li[3]
  Click Element  //*[@id="header"]/div/div[4]/ul/li[3]
  Handle Alert  ACCEPT
  Sleep  3s
  Element Should Be Visible  //*[@id="root"]/div/div[2]/div[1]/div[4]/span[1]
