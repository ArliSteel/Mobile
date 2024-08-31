*** Settings ***
Documentation    Кейворды для экрана онбординга
Resource    ../common.resource

*** Keywords ***
Allow location
    [Documentation]    Разрешть геолокацию
    Wait Until Element Is Visible    ${ONBOARDING_SUBMIT_BTN}
    Click Element    ${ONBOARDING_SUBMIT_BTN}

    IF    ${PLATFORM_VERSION} > 9
        Wait Until Element Is Visible    ${PERMISSION_FOREGROUND}
        Click Element    ${PERMISSION_FOREGROUND}
    ELSE
        Wait Until Element Is Visible    ${PERMISSION_ALLOW_OLD}
        Click Element    ${PERMISSION_ALLOW_OLD}
    END

Prohibit Location
    [Documentation]    Запретить геолокацию
    Wait Until Element Is Visible    ${ONBOARDING_SUBMIT_BTN}
    Click Element    ${ONBOARDING_SUBMIT_BTN}

    Wait Until Element Is Visible    ${ONBOARDING_PROHIBIT_BTN}
    Click Element    ${ONBOARDING_PROHIBIT_BTN}

Confirm town
    [Documentation]    Подтвердить город
    Wait Until Element Is Visible    ${ONBOARDING_CONFIRM_CITY_BTN}
    Click Element    ${ONBOARDING_CONFIRM_CITY_BTN}

Replace town
    [Documentation]    Изменить город
    Wait Until Element Is Visible    ${ONBOARDING_NOT_CONFIRM_CITY_BTN}
    Click Element     ${ONBOARDING_NOT_CONFIRM_CITY_BTN}

Choosing the town of Moscow
    [Documentation]    Выбор города Москва из предложенного списка городов
    Wait Until Element Is Visible    ${CHOOSING_CITY_MOSCOW_BTN}
    Click Element     ${CHOOSING_CITY_MOSCOW_BTN}

Allow Notifications
    [Documentation]    Разрешить уведомления
    Wait Until Element Is Visible    ${ONBOARDING_SUBMIT_BTN}
    Click Element    ${ONBOARDING_SUBMIT_BTN}

    Wait Until Element Is Visible    ${PERMISSION_ALLOW}
    Click Element    ${PERMISSION_ALLOW}