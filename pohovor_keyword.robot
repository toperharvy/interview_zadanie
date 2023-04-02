*** Settings ***
Library  Browser

*** Keywords ***

------- Vlastne KEYWORDS -------
Open Browser + Nastavenie URL
    [Documentation]  Otvori sa prehliadac a zada sa URLka
    [Arguments]  ${URLkaL}
    Browser.New Context     viewport={'width': 1920, 'height': 1080}
    Browser.New Page        ${URLkaL}
    Sleep           2

Filtrovanie
    [Documentation]  Overi xpath, vlozi hladany text a stlaci enter
    [Arguments]  ${HladanyText}
    Browser.Wait for elements state     //input[@title='Hľadať']  visible  15s
    Browser.Fill Text       //input[@title='Hľadať']    ${HladanyText}
    Sleep           2
    Browser.Press Keys      //input[@title='Hľadať']    Enter
    Sleep           2

Kliknutie na linku
    [Documentation]  Overi xpath, klikne na hladany text-linku
    [Arguments]  ${HladanyText}
    Browser.Wait for elements state     //h3[text()='${HladanyText}']//parent::a  visible  15s
    Browser.Click           //h3[text()='${HladanyText}']//parent::a
    sleep           5
    Log To Console      Test OK

Ukoncenie testu
    [Documentation]  Po skonceni testu zatvor browser
    Browser.Close Browser
