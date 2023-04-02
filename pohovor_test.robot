#Nasetupovanie suite, zadefinovanie kniznice
*** Setting ***
Resource  ../pohovor_keyword.robot
Library  Browser
Suite Setup     Run Keywords
...             Browser.New Browser
...             browser=${BROWSER}
...             headless=${HEADLESS}    AND
...             Browser.Set Browser Timeout  1m

#Zadefinovanie premennych pre  test
*** Variables ***
${browser}=  Chromium
${headless}=  False
${URLkaL}=       http://google.com
${HladanyText}=  Multitude

#Samotne TCs pre danu funkcionalitu
*** Test Cases ***
TC1
    [Tags]  Test-Prazdne
    [Documentation]  Zakladny test pre vyhladanie klucoveho slova "Multitude"
    Open Browser + Nastavenie URL    ${URLkaL}
    Filtrovanie    ${HladanyText}
    Kliknutie na linku    ${HladanyText}
    Ukoncenie testu


