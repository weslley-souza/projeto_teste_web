*** Settings ***
Documentation    Essa suite verifica o comportamento ao tentar cadastrar 
...              usuarios no site amazon.com.br com dados em branco ou inválidos
Resource           ../resources/base_teste.robot 
Test Setup         abrir navegador 
Test Teardown      fechar navegador


*** Test Cases ***

Canario 01: Realizar cadastro com campo "Nome" vazio 
    [Tags]    nome
    Given Que estou na home "amazon.com.br"
    And Acesso a pagina "Criar conta"     
    When insiro os dados email e senha     
    Then A mensagem de erro deve ser exibida    ${MSG_ERRO[0]} 

Canario 02: Realizar cadastro com campo "E-mail" Vazio
    [Tags]    email
    Given Que estou na home "amazon.com.br"
    And Acesso a pagina "Criar conta"
    When Insiro os dados nome e senha
    Then A mensagem de erro deve ser exibida    ${MSG_ERRO[1]}

Canario 03: Realizar cadastro com campo "Senha" Vazio
    [Tags]    senha
    Given Que estou na home "amazon.com.br"
    And Acesso a pagina "Criar conta"
    When Insiro os dados nome e email
    Then A mensagem de erro deve ser exibida    ${MSG_ERRO[2]}

Canario 04: Realizar cadastro com campo "Insira a senha nova mais uma vez" vazio 
    [Tags]    checar
    Given Que estou na home "amazon.com.br"
    And Acesso a pagina "Criar conta"
    When Insiro os dados nome email e senha 
    Then A mensagem de erro deve ser exibida    ${MSG_ERRO[3]}


Canario 05: Verificar comportamento ao realizar cadastro com email inválido
    [Tags]    email_invalido
    Given Que estou na home "amazon.com.br"
    And Acesso a pagina "Criar conta"
    When Insiro o dado email inválido           
    Then A mensagem de erro deve ser exibida    ${MSG_ERRO[4]}

Canario 06: Verificar comportamento ao realizar cadastro com senha menor que 6 caracteres
    [Tags]    senha_invalida
    Given Que estou na home "amazon.com.br"
    And Acesso a pagina "Criar conta"
    When Insiro o dado senha inválido           
    Then A mensagem de erro deve ser exibida    ${MSG_ERRO[2]}

Canario 07: Verificar comportamento ao realizar cadastro com senhas diferentes
    [Tags]    senha_diferentes
    Given Que estou na home "amazon.com.br"
    And Acesso a pagina "Criar conta"
    When Insiro o dado senha diferentes             
    Then A mensagem de erro deve ser exibida    ${MSG_ERRO[5]}
    
  
            
            
 
        