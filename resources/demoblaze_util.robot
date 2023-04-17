*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${HOME_BTN}      xpath://*[@id="navbarExample"]/ul/li[1]/a
${ABOUTUS_BTN}   xpath://*[@id="navbarExample"]/ul/li[2]/a
${CONTACT_BTN}   xpath://*[@id="navbarExample"]/ul/li[3]/a
${CART_BTN}      id:cartur
${LOGIN_BTN}     id:login2
${SIGNUP_BTN}    id:signin2
${FOOTER}        xpath:/html/body/footer
${PHONES_BTN}    xpath:/html/body/div[5]/div/div[1]/div/a[2]
${LAPTOPS_BTN}   xpath:/html/body/div[5]/div/div[1]/div/a[3]
${MONITORS_BTN}  xpath:/html/body/div[5]/div/div[1]/div/a[4]

*** Keywords ***
The page should contain the texts
    [Arguments]                         @{ARGS}
    FOR                                 ${TEXT}  IN  @{ARGS}
    Page Should Contain                 ${TEXT}
    END

The user opens the homepage
    Open Browser    ${STAGING_URL}  chrome
    Maximize Browser Window
    Wait Until Element Is Visible   ${SIGNUP_BTN}   timeout=30

The homepage loads completely
    Wait Until Element Is Visible   ${SIGNUP_BTN}   timeout=30
    Wait Until Element Is Visible   ${FOOTER}       timeout=30
    Title Should Be                 STORE
    The page should contain the texts
    ...     Phones
    ...     Laptops
    ...     Monitors

The user should be able to see the navigation menu
    Wait Until Element Is Visible   ${HOME_BTN}     timeout=30
    Wait Until Element Is Visible   ${ABOUTUS_BTN}  timeout=30
    Wait Until Element Is Visible   ${CONTACT_BTN}  timeout=30
    Wait Until Element Is Visible   ${CART_BTN}     timeout=30
    Wait Until Element Is Visible   ${LOGIN_BTN}    timeout=30
    Wait Until Element Is Visible   ${SIGNUP_BTN}   timeout=30