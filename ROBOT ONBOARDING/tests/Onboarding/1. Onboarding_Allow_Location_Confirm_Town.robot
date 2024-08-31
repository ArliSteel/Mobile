*** Settings ***
Resource    onboarding.resource

Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Launch app
Test Teardown    common.Close app

*** Test Cases ***
Allow Location And Confirm Town
    [Documentation]    Онборднг с разрешением геолокации и подтверждением предложенного города

    onboarding.Allow location
    onboarding.Confirm town
    IF  ${PLATFORM_VERSION} >= 13    onboarding.Allow Notifications
    
    Wait Until Element Is Visible    ${VERTICAL_FEATURED_IMAGE}