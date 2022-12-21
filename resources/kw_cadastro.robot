*** Settings ***
Library    SeleniumLibrary  
Resource   base_teste.robot   
Resource   variaveis_cadastro.robot


*** Keywords ***

Que estou na home "amazon.com.br"
    Title Should Be   ${TITULO}
    Capture Page Screenshot
    


Acesso a pagina "Criar conta"
    Go To              ${URL_CRIAR_CONTA}    
    Title Should Be    Registro na Amazon
  
    


insiro os dados email e senha
    Inserir email    ${DADOS_USUARIO.email}  
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${DADOS_USUARIO.senha}
    Clicar botao     ${BOTAO_CONTINUE}

Insiro os dados nome e senha
    Inserir nome     ${DADOS_USUARIO.nome}    
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${DADOS_USUARIO.senha}
    Clicar botao     ${BOTAO_CONTINUE}

Insiro os dados nome e email
    Inserir nome     ${DADOS_USUARIO.nome}
    Inserir email    ${DADOS_USUARIO.email}
    Clicar botao     ${BOTAO_CONTINUE}

Insiro os dados nome email e senha
    Inserir nome     ${DADOS_USUARIO.nome}   
    Inserir email    ${DADOS_USUARIO.email}    
    Inserir senha    ${DADOS_USUARIO.senha}


Insiro o dado email inválido
    Inserir nome     ${DADOS_USUARIO.nome}   
    Inserir email    ${INVALIDOS.email}    
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${DADOS_USUARIO.senha}
    Clicar botao     ${BOTAO_CONTINUE}

Insiro o dado senha inválido
    Inserir nome     ${DADOS_USUARIO.nome}   
    Inserir email    ${INVALIDOS.email}    
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${DADOS_USUARIO.senha}
    Clicar botao     ${BOTAO_CONTINUE}
Insiro o dado senha diferentes
    Inserir nome     ${DADOS_USUARIO.nome}
    Inserir email    ${INVALIDOS.email}
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${INVALIDOS.senha}
    Clicar botao     ${BOTAO_CONTINUE}

A mensagem de erro deve ser exibida
    [Arguments]    ${mensagem_erro}
    Wait Until Page Contains    ${mensagem_erro}



    