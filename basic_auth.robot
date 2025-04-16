*** Settings ***
Library    Browser

*** Variables ***
${USERNAME}      myuser
${PASSWORD}      mypassword
${AUTH_URL}      https://${USERNAME}:${PASSWORD}@httpbin.org/basic-auth/${USERNAME}/${PASSWORD}

*** Test Cases ***
Login With Basic Auth Via URL
    New Browser    chromium
    New Page       ${AUTH_URL}
    Wait For Elements State    //pre    visible
    ${response}=    Get Text   //pre
    Log    ${response}
    Should Contain    ${response}    authenticated
    Close Browser
