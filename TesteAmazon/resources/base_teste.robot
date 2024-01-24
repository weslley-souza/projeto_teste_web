*** Settings ***
Library    SeleniumLibrary
Resource   carrinho_produto.robot
Resource   kw_cadastro.robot


*** Variables ***
${BROWSER}     chrome

                                     

*** Keywords ***
Abrir Navegador
    Set Selenium Timeout    10
    Open Browser            about:blank   headless${BROWSER}                         
    Maximize Browser Window
   
    
Fechar Navegador
    Capture Page Screenshot
    Close Browser




    



    
    

