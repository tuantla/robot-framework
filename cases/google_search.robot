*** Settings ***
Library           Selenium2Library

*** Variables ***
${GOOGLE_URL}      https://www.google.com
${BROWSER}        Chrome

*** Test Cases ***
Searching
    Open Browser To Login Page
    Enter search keywork

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${GOOGLE_URL}    ${BROWSER}
    Title Should Be    Google
Enter search keywork
    Input Text   q  tuantla
    Press Key    q    \\13