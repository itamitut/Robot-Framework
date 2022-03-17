*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Check Github username
    Create Session  github_session  https://api.github.com
    ${response}=  GET On Session  github_session  users/robotframeworktutorial  #/  expected_status=200
    Should Be Equal As Strings  ${response.status_code}  200
    Should Be Equal As Strings  ${response.reason}  OK
    ${json}=  SET VARIABLE  ${response.json()}
    Should Be Equal As Strings  ${json['login']}  robotframeworktutorial
    ${emoji_url}=  SET VARIABLE  ${json['aerial_tramway']}
    Open Browser  ${emoji_url} chrome




 #   should be equal as strings  ${responce.status}  200
