*** Settings ***
Resource    onboarding.resource

Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Launch app
Test Teardown    common.Close app

*** Test Cases ***
Prohibit Location And Confirm Town
    [Documentation]    Онборднг с запретом геолокации и выбором предложенного города

    onboarding.Prohibit Location
    onboarding.Confirm town
    IF  ${PLATFORM_VERSION} >= 13    onboarding.Allow Notifications
    
    Wait Until Element Is Visible    ${STORY_IMAGE}