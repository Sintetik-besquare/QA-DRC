*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify signing up with checking terms & conditions box

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[1]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[1]
  Wait Until Element Is Visible  //*[@id="signup"]/div[1]/h2/b/center
  Input Text  //*[@id="signup"]/div[1]/form/div[1]/input  test4@yahoo.com
  Input Password  //*[@id="signup"]/div[1]/form/div[2]/input  Abcd1234!
  Input Password  //*[@id="signup"]/div[1]/form/div[3]/input  Abcd1234!
  Click Element  //*[@id="signup"]/div[1]/form/div[4]/input
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s
  Wait Until Element Is Visible  //*[@id="balance-amount"]/font

