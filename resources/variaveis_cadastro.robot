*** Settings ***
Library    SeleniumLibrary   


*** Variables ***      
&{DADOS_USUARIO}       nome=Weslley Teste    email=teste.wesly@gmail.com    senha=a1b2c3
&{INVALIDOS}           senha=a1b2c          email=teste.wesly@gmail        
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
${URL_CRIAR_CONTA}     https://www.amazon.com.br/ap/register?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com.br%2Fref%3Dap_frn_logo%2F%3F_encoding%3DUTF8%26ref_%3Dnav_newcust&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=brflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&
${TITULO}              Amazon.com.br | Tudo pra você, de A a Z.
${BTN_LOGIN}           nav-link-accountList-nav-line-1
${CAMPO_NAME}          ap_customer_name
${CAMPO_EMAIL}         ap_email
&{CAMPO_PASSWORD}      senha=ap_password    check=ap_password_check
${BOTAO_CONTINUE}      continue


*** Keywords ***   

Inserir nome
    [Arguments]    ${nome}              
    Input Text     ${CAMPO_NAME}                ${nome}

Inserir email
    [Arguments]    ${email}              
    Input Text     ${CAMPO_EMAIL}              ${email}

Inserir senha
    [Arguments]    ${senha}             
    Input Text     ${CAMPO_PASSWORD.senha}     ${senha}

Checar senha
    [Arguments]    ${checar_senha}              
    Input Text     ${CAMPO_PASSWORD.check}    ${checar_senha}



Clicar botao
    [Arguments]    ${botao}    
    Click Button   ${botao}