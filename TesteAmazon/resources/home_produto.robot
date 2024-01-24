*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${HOME_URL}                  https://www.amazon.com.br  
${HOME_TITULO}               //title[contains(.,'Amazon.com.br | Tudo pra você, de A a Z.')]
&{HOME_MENU_OFERTA}          menu=Ofertas do Dia    botao=//a[contains(.,'Ofertas do Dia')]        
${HOME_CATEGORIA}            //a[contains(.,'Dispositivos Amazon e Acessórios')] 
&{HOME_ID_PESQUISA}          campo=twotabsearchtextbox    botao=nav-search-submit-button
${HOME_PRODUTO}              //img[contains(@alt,'Console Xbox Series S')]





*** Keywords ***

Acessar a home do site Amazon.com.br
    Go To    ${HOME_URL}
    ${HOME_TITLE}    Get Title

Acessar o menu "Ofertas do Dia"
    Wait Until Page Contains          ${HOME_MENU_OFERTA.menu}         
    Click Element                     ${HOME_MENU_OFERTA.botao}


Verificar se o título da página fica "${Titulo}"
    ${Titulo}            Get Title


Verificar se aparece a frase "${Frase_Ofertas_Promocões}"
    Wait Until Page Contains  ${Frase_Ofertas_Promocões}


Verificar se aparece a categoria "Dispositivos Amazon e Acessórios"
    Wait Until Page Contains Element  ${HOME_CATEGORIA}
    


# TESTE 2

Digitar o nome do produto "${Item}" no campo de pesquisa
    Input Text                        ${HOME_ID_PESQUISA.campo}    ${Item}

Clicar no botão de pesquisa
    Click Button                      ${HOME_ID_PESQUISA.botao}
    


Verificar o resultado da pesquisa, listando o produto pesquisado "Xbox Series S"
    Wait Until Page Contains Element       ${HOME_PRODUTO}
    