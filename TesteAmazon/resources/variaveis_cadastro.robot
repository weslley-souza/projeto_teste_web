*** Settings ***
Library    SeleniumLibrary   


*** Variables ***  
${HOME_CRIAR_CONTA}    https://www.amazon.com.br/ap/register?showRememberMe=true&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com.br%2Fb%2F%3F_encoding%3DUTF8%26ie%3DUTF8%26node%3D19877613011%26pf_rd_p%3D14a7675e-d4d4-471a-8e31-9d15eaad92ee%26pd_rd_wg%3DFz3l1%26pf_rd_r%3D9Q5EF1M4H3X2BJXFVSZC%26content-id%3Damzn1.sym.14a7675e-d4d4-471a-8e31-9d15eaad92ee%26pd_rd_w%3DzB9ZS%26painterId%3Dmini-icon-scrolling-card%26pd_rd_r%3D766e047f-34fe-4a7d-bc03-805af372e836%26ref_%3Dnav_ya_signin&prevRID=3NEXVRCXKY9K7QHDF8BE&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=brflex&openid.mode=checkid_setup&prepopulatedLoginId=&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=brflex&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0
&{DADOS_USUARIO}       nome=Weslley Teste    email=teste.wesly@gmail.com    senha=a1b2c3
&{DADOS_INVALIDOS}     senha=a1b2c           email=teste.wesly@gmail        
${TITULO}              Registro na Amazon
&{CAMPO}               nome=ap_customer_name    email=ap_email  senha=ap_password    check=ap_password_check
${BOTAO}               continuee


*** Keywords ***   


Acessar a page "Criar conta"
    Go To    ${HOME_CRIAR_CONTA} 
    Wait Until Page Contains   Criar conta  

Inserir nome
    [Arguments]    ${nome}              
    Input Text     ${CAMPO.nome}            ${nome}

Inserir email
    [Arguments]    ${email}              
    Input Text     ${CAMPO.email}           ${email}

Inserir senha
    [Arguments]    ${senha}             
    Input Text     ${CAMPO.senha}           ${senha}

Checar senha
    [Arguments]    ${checar_senha}              
    Input Text     ${CAMPO.check}           ${checar_senha}

Clicar botao
    [Arguments]    ${botao}    
    Click Button   ${botao}


Mensagem de erro esperado
    [Arguments]                 ${mensagem_erro}
    Wait Until Page Contains    ${mensagem_erro}



