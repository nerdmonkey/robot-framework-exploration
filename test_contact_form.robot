*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}              https://httpbin.org/forms/post
${BROWSER}          Chrome
${CUST_NAME}        Sydel Palinlin
${CUST_TEL}         09171234567
${CUST_EMAIL}       sydel.palinlin@gmail.com
${DELIVERY_TIME}    12:30
${COMMENTS}         Please leave the pizza at the door.

*** Test Cases ***
Submit Pizza Order Form
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    name=custname    ${CUST_NAME}
    Input Text    name=custtel     ${CUST_TEL}
    Input Text    name=custemail   ${CUST_EMAIL}
    Click Element  xpath=//input[@name="size" and @value="medium"]
    Click Element  xpath=//input[@name="topping" and @value="bacon"]
    Click Element  xpath=//input[@name="topping" and @value="cheese"]
    Input Text     name=delivery   ${DELIVERY_TIME}
    Input Text     name=comments   ${COMMENTS}
    Click Button   xpath=//button[text()="Submit order"]
    Sleep          2s
    # Page Should Contain    "503 Service Temporarily Unavailable"
    [Teardown]     Close Browser
