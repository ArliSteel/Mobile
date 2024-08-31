*** Settings ***
Documentation    Локаторы для экрана онборднга

*** Variables ***
${ONBOARDING_SUBMIT_BTN}                ru.afisha.android:id/fragOnboardinSubmitBtn
${ONBOARDING_PROHIBIT_BTN}              com.android.permissioncontroller:id/permission_deny_button  
${ONBOARDING_CONFIRM_CITY_BTN}          android:id/button1
${ONBOARDING_NOT_CONFIRM_CITY_BTN}      android:id/button2
${CHOOSING_CITY_MOSCOW_BTN}             xpath=//androidx.recyclerview.widget.RecyclerView[@resource-id="ru.afisha.android:id/fragCitySelectionCitiesRv"]/android.widget.LinearLayout[2]