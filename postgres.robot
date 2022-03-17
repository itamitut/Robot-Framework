*** Settings ***
Library  PostgreSQLDB
Library  String
Library  Dialogs

*** Variables ***
${DB_NAME}  =  postgres
${DB_USER_NAME}  =  postgres
${DB_PASS}  =  1234
#${PREVIOUS_ROW_COUNT} =  1

*** Keywords ***
Connect
    Connect To Postgresql  postgres  postgres  1234

Save Current Row Count
    ${PREVIOUS_ROW_COUNT} =  execute sql string  SELECT count(*) FROM test.test_table;
    Log  ${PREVIOUS_ROW_COUNT[0][0]}

Disconnect
    close all postgresql connections

