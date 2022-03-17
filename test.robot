*** Settings ***
Library  SeleniumLibrary
Resource  postgres.robot
Resource  api.robot
Test Setup  Connect
Test Teardown  Disconnect

*** Test Cases ***
Browser test
    [Tags]  UI
    Open Browser  https://ru.wikipedia.org  chrome
    Input Text  name:search  Смоленск
    click button  name:go
    page should contain  Смоленск
    close browser

Postgres test
    [Tags]  DB
#    @{query}=  Execute Sql String 	 SELECT CURRENT_DATE, CURRENT_DATE+1
#    Save Current Row Count
    Execute Sql String 	 insert into test.test_table (id, appnumber) values (1, 'SA_2022_03_18'); commit; select 1

API test
    [Tags]  API
    Check Github username


