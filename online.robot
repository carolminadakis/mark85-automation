*** Settings ***
Documentation            Online

Library            Browser

*** Test Cases ***
Web deve estar online
    New Browser         browser=chromium    headless=False
    New Page            http://localhost:3000
    Get Title           equal            Mark85 by QAx

    Sleep    3