*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://seleniumbase.io/demo_page

*** Test Cases ***
Test SeleniumBase Demo Page
    Open Browser    ${URL}    Chrome
    Maximize Browser Window

    # Input text fields
    Input Text    id=myTextInput        Hello
    Input Text    id=myTextarea         Some notes here
    Input Text    id=myTextInput2       Overwritten Text
    Input Text    id=placeholderText    Placeholder filled

    # Select dropdown value
    Select From List By Value    id=mySelect    75%

    # Click radio button
    Click Element    id=radioButton2

    # Click checkboxes
    Click Element    id=checkBox1
    Click Element    id=checkBox2
    Click Element    id=checkBox3
    Click Element    id=checkBox4

    # Set slider value to 80 and trigger JS event
    Execute Javascript    document.getElementById("mySlider").value = 80;
    Execute Javascript    document.getElementById("mySlider").dispatchEvent(new Event('input'));

    # Click the main button
    Click Button    id=myButton

    # Click the SVG to trigger animation
    Click Element    id=svgRect

    # Click link to seleniumbase.com
    Click Link    id=myLink1

    Sleep    3s
    [Teardown]    Close Browser
