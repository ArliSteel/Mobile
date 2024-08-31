*** Settings ***
Resource    onboarding.resource

Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Launch app
Test Teardown    common.Close app

*** Test Cases ***
Prohibit Location And Replace Town
    [Documentation]    Онборднг с запретом геолокации и выбором города самостоятельно

    onboarding.Prohibit Location
    onboarding.Replace town
    onboarding.Choosing the town of Moscow
    IF  ${PLATFORM_VERSION} >= 13    onboarding.Allow Notifications
    
    Wait Until Element Is Visible    ${VERTICAL_FEATURED_IMAGE}