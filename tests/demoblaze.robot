*** Settings ***
Documentation       Demoblaze acceptance criteria validation and end-to-end tests

Resource            ../resources/demoblaze_util.robot

Test Setup          Run Keywords

Test Teardown       Run Keywords
...                 Capture Page Screenshot
...                 Close Browser

*** Variables ***
${USERNAME}         TEST9003
${PASSWORD}         TEST9003

*** Test Cases ***
New user opens the homepage
    Given The user opens the homepage
    When The homepage loads completely
    Then The user should be able to see the navigation menu

New user registers to the webpage
    Given The user opens the homepage
    And The user clicks the sign up link
    When The user provides their username and password      ${USERNAME}     ${PASSWORD}
    And The user clicks the Sign up button
    Then The user should be able to sign up successfully

New user logs in to the webpage