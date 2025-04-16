*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://seleniumbase.io/demo_page

*** Test Cases ***
Fill Form And Submit
    Open Browser    ${URL}    Chrome
    Input Text    id=myTextInput    Hello World
    Click Button    id=myButton
    Sleep    2s
    [Teardown]    Close Browser
