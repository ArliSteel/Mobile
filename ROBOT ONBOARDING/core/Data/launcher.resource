*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}         http://127.0.0.1:4723 
${AUTOMATION_NAME}    Uiautomator2 
${PLATFORM_NAME}      Android 
${PLATFORM_VERSION}   14
${DEVICE_NAME}        sdk_gphone64_x86_64
${VOID}               emulator-5556
${APP_PACKAGE}        ru.afisha.android
${APP_ACTIVITY}       ru.afishaog.android.presentation.app.AppActivity

*** Keywords ***
Open App
    Open Application    
    ...    remote_url=${REMOTE_URL}    
    ...    automationName=${AUTOMATION_NAME}    
    ...    platformName=${PLATFORM_NAME}    
    ...    platformVersion=${PLATFORM_VERSION}    
    ...    deviceName=${DEVICE_NAME}    
    ...    void=${VOID}    
    ...    appPackage=${APP_PACKAGE}    
    ...    appActivity=${APP_ACTIVITY}