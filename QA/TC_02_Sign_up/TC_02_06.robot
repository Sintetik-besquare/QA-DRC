*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
Testing for some invalid password with cases like: less value than minimum, without uppercase, lowercase, numeric character and special character in password field

  Open Browser  https://sintetik.xyz/  Chrome
  Maximize Browser Window
  Wait Until Page Contains Element  //*[@id="header"]/div/div[3]/button[1]  30s
  Click Button  //*[@id="header"]/div/div[3]/button[1]
  Wait Until Element Is Visible  //*[@id="signup"]/div[1]/h2/b/center
  Input Text  //*[@id="signup"]/div[1]/form/div[1]/input  test@gmail.com
  Click Element  //*[@id="signup"]/div[1]/form/div[4]/input

less value than minimum
  
  Input Password  //*[@id="signup"]/div[1]/form/div[2]/input  Abc
  Input Password  //*[@id="signup"]/div[1]/form/div[3]/input  Abc
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s
  Alert Should Be Present  Password must be greater than 8 and contain at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 symbol

without uppercase

  Input Password  //*[@id="signup"]/div[1]/form/div[2]/input  abcd1234!
  Input Password  //*[@id="signup"]/div[1]/form/div[3]/input  abcd1234!
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s 
  Alert Should Be Present  Password must be greater than 8 and contain at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 symbol

without lowercase

  Input Password  //*[@id="signup"]/div[1]/form/div[2]/input  ABCD1234!
  Input Password  //*[@id="signup"]/div[1]/form/div[3]/input  ABCD1234!
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s 
  Alert Should Be Present  Password must be greater than 8 and contain at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 symbol

without numeric character

  Input Password  //*[@id="signup"]/div[1]/form/div[2]/input  Abcdefgh!
  Input Password  //*[@id="signup"]/div[1]/form/div[3]/input  Abcdefgh!
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s 
  Alert Should Be Present  Password must be greater than 8 and contain at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 symbol

without special character

  Input Password  //*[@id="signup"]/div[1]/form/div[2]/input  Abcd12345
  Input Password  //*[@id="signup"]/div[1]/form/div[3]/input  Abcd12345
  Click Button  //*[@id="signup"]/div[1]/form/center[1]/button 
  Sleep  5s 
  Alert Should Be Present  Password must be greater than 8 and contain at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 symbol

