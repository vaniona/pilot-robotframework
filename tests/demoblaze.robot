*** Settings ***
Documentation       Demoblaze acceptance criteria validation and end-to-end tests

Resource            ../resources/demoblaze_util.robot

Test Setup          Run Keywords

Test Teardown       Run Keywords
...                 Capture Page Screenshot
...                 Close Browser

*** Variables ***


*** Test Cases ***
New user opens the homepage
    Given The user opens the homepage
    When The homepage loads completely
    Then The user should be able to see the navigation menu