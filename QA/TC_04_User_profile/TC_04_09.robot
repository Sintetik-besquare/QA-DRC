*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify all user profile components such as first name, last name, age, gender, country, education, occupation are editable in edit state

  Set Selenium Speed  0.5s
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
  Click Button  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[7]/div/button
  Input Text  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[1]/div[1]/div/input  John
  Input Text  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[1]/div[2]/input  Doe
  Input Text  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[2]/input  20
  Click Element  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[3]/select
  Click Element  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[3]/select/option[2]
  Click Element  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[4]/div/select
  Click Element  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[4]/div/select/option[4]
  Click Element  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[5]/select
  Click Element  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[5]/select/option[4]
  Click Element  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[6]/select
  Click Element  //*[@id="root"]/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div/div[6]/select/optgroup[2]/option[1]