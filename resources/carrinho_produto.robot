*** Settings ***
Library    SeleniumLibrary
Resource   home_produto.robot


*** Variables ***
${CARRINHO_ID_ADC}       add-to-cart-button
${CARRINHO_BOTAO}        //a[contains(@data-csa-c-type,'button')]
${Delete_Item}           //input[contains(@value,'Excluir')]
${Carrinho_Vazio}        Seu carrinho de compras da Amazon está vazio.



*** Keywords ***

Adicionar o produto "${Console}" no carrinho
    Click Element                  ${HOME_PRODUTO}
    Wait Until Page Contains       ${Console}
    Click Button                   ${CARRINHO_ID_ADC}
    Set Test Variable              ${Console}    


Verificar se o produto adicionado foi "Xbox Series S"
    Wait Until Page Contains    ${Console}
    Click Element               ${CARRINHO_BOTAO}


# TESTE 4
Remover o produto "Xbox Series S" do carrinho
    Click Element                   ${Delete_Item}


Verificar se o carrinho fica vazio
    Wait Until Page Contains       ${Carrinho_Vazio}