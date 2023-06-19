*** Settings ***
Documentation        Cenários de testes de cadastro de usuário
Library              Browser

*** Test Cases ***
Deve poder cadastrar um novo usuário
    New Browser        browser=chromium        headless=${False}
    New Page           http://localhost:3000/signup
    

    # Checkpoint

    Wait For Elements State    css=h1        visible        5
    Get Text                   css=h1        equal        Faça seu cadastro

    Fill Text    id=name         Ana Carolina
    Fill Text    id=email        ana@gmail.com 
    Fill Text    id=password     teste123

    Click        id=buttonSignup

    Sleep    5
    