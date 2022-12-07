*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Verify invalid emails with cases like: without @, without(.), without domain, without alphabets before @

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[1]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[1]
  Wait Until Element Is Visible  //*[@id="signup"]/div[1]/h2/b/center
  Input Password  //*[@id="signup"]/div[1]/form/div[2]/input  Abcd1234!
  Input Password  //*[@id="signup"]/div[1]/form/div[3]/input  Abcd1234!
  Click Element  //*[@id="signup"]/div[1]/form/div[4]/input

without @
  
  Input Text  //*[@id="signup"]/div[1]/form/div[1]/input  testgmail.com
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s
  Alert Should Be Present  Invalid email format

without (.) 

  Input Text  //*[@id="signup"]/div[1]/form/div[1]/input  test@gmailcom
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s 
  Alert Should Be Present  Invalid email format

without domain, 

  Input Text  //*[@id="signup"]/div[1]/form/div[1]/input  test@.com
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s 
  Alert Should Be Present  Invalid email format

without alphabets before @

  Input Text  //*[@id="signup"]/div[1]/form/div[1]/input  @gmail.com
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s 
  Alert Should Be Present  Invalid email format