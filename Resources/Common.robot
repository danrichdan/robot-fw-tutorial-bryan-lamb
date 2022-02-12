*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  edge
    Maximize Browser Window

End Web Test
    Close Browser

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2

Cleanup Testing Data
    Log   Iam cleaning up the test data...

Custom Keyword 1
    Log   Doing keyword 1

Custom Keyword 2
    Log   Doing keyword 2