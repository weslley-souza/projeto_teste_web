*** Settings ***
Library    SeleniumLibrary  
Resource   base_teste.robot   
Resource   variaveis_cadastro.robot


*** Keywords ***

Que estou na página "Criar conta" do site "amazon.com.br"                
    Acessar a page "Criar conta"
    Title Should Be                   ${TITULO} 
      
  
Preencho os campos obrigatorios exceto o campo "Nome"
    Inserir nome     ${EMPTY}
    Inserir email    ${DADOS_USUARIO.email}  
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${DADOS_USUARIO.senha}

    Clicar botao     ${BOTAO}

Preencho os campos obrigatorios exceto o campo "E-mail"
    Inserir nome     ${DADOS_USUARIO.nome}
    Inserir email    ${EMPTY}    
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${DADOS_USUARIO.senha}

    Clicar botao     ${BOTAO}

Preencho os campos obrigatorios exceto o campo "Senha"
    Inserir nome     ${DADOS_USUARIO.nome}
    Inserir email    ${DADOS_USUARIO.email}
    Inserir senha    ${EMPTY}
    Checar senha     ${DADOS_USUARIO.senha}

    Clicar botao     ${BOTAO}

Preencho os campos obrigatorios exceto o campo "Checar senha" 
    Inserir nome     ${DADOS_USUARIO.nome}    
    Inserir email    ${DADOS_USUARIO.email}    
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${EMPTY}

    Clicar botao     ${BOTAO}

Preencho os dados obrigatorios com o campo "E-mail" invalido
    Inserir nome     ${DADOS_USUARIO.nome}   
    Inserir email    ${DADOS_INVALIDOS.email}    
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${DADOS_USUARIO.senha}

    Clicar botao     ${BOTAO}

Preencho os dados obrigatorios com o campo "Senha" invalido 
    Inserir nome     ${DADOS_USUARIO.nome}   
    Inserir email    ${DADOS_USUARIO.email}    
    Inserir senha    ${DADOS_INVALIDOS.senha}
    Checar senha     ${DADOS_INVALIDOS.senha}

    Clicar botao     ${BOTAO}
    
Preencho os dados obrigatorios com o campo "Senha" e "Checar senha" diferentes
    Inserir nome     ${DADOS_USUARIO.nome}
    Inserir email    ${DADOS_USUARIO.email}
    Inserir senha    ${DADOS_USUARIO.senha}
    Checar senha     ${DADOS_INVALIDOS.senha}

    Clicar botao     ${BOTAO}

A mensagem de erro "${MSG_ERRO}" deve ser exibida
    Mensagem de erro esperado    ${MSG_ERRO}



    