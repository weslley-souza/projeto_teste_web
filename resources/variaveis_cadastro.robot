*** Settings ***
Library    SeleniumLibrary   


*** Variables ***      
&{DADOS_USUARIO}       nome=Weslley Teste    email=teste.wesly@gmail.com    senha=a1b2c3
&{DADOS_INVALIDOS}     senha=a1b2c           email=teste.wesly@gmail        
@{MSG_ERRO}            Insira seu nome
                        #INDICE 0    
...                    Digite seu e-mail ou número de telefone celular
                        #INDICE 1                            
...                    Mínimo de 6 caracteres necessários    
                        #INDICE 2
...                    Digite sua senha novamente
                        #INDICE 3
...                    Endereço de e-mail ou número de telefone celular errado ou inválido. Corrija e tente novamente. 
                        #INDICE 4
...                    As senhas não são iguais
                        #INDICE 5
${TITULO}              Amazon.com.br | Tudo pra você, de A a Z.
${BTN_LOGIN}           nav-link-accountList-nav-line-1
${BTN_CRIR_CONTA}      createAccountSubmit
${CAMPO_NOME}          ap_customer_name
${CAMPO_EMAIL}         ap_email
&{CAMPO_SENHA}         senha=ap_password    check=ap_password_check
${BOTAO_CONTINUE}      continue


*** Keywords ***   

Inserir nome
    [Arguments]    ${nome}              
    Input Text     ${CAMPO_NOME}            ${nome}

Inserir email
    [Arguments]    ${email}              
    Input Text     ${CAMPO_EMAIL}           ${email}

Inserir senha
    [Arguments]    ${senha}             
    Input Text     ${CAMPO_SENHA.senha}     ${senha}

Checar senha
    [Arguments]    ${checar_senha}              
    Input Text     ${CAMPO_SENHA.check}     ${checar_senha}

Clicar botao
    [Arguments]    ${botao}    
    Click Button   ${botao}

Botão Login
    [Arguments]                ${clicar_login}      
    Click Element              ${clicar_login}
    Wait Until Page Contains   Criar sua conta da Amazon

Botão criar conta
    [Arguments]            ${criar_conta}
    Click Element          ${criar_conta}
    Title Should Be        Registro na Amazon

