*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
LoginTest
    open browser                    ${URL}          ${Browser}
    set selenium speed              1s
    maximize browser window
    input text                      xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input       admin
    input text                      xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input       admin123
    click button                    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    wait until page contains element    xpath://*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a
Admin
    click element                   xpath://*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a
    input text                      xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input                 justin
    wait until page contains element        xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[2]/i
    click element                   xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[1]
    input text                      xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/input          PT. COBA-COBA
    wait until page contains element    xpath:xpath://*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]/div/div/div[2]/i
PIM
    click element                   xpath://*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[2]/a/span//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[2]/a/span
Leave
    click element                   xpath://*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[3]/a/span
Time
    click element                   xpath://*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[4]/a
    click