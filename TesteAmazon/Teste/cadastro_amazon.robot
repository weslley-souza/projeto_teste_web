*** Settings ***
Documentation      Essa suite verifica o comportamento ao tentar cadastrar 
...                usuarios no site amazon.com.br com dados em branco ou inválidos
Resource           ../resources/base_teste.robot 
Test Setup         abrir navegador 
Test Teardown      fechar navegador


*** Test Cases ***

Canario 01: Verificar mensagem de erro ao tentar cadastrar com campo "Nome" vazio 
    [Tags]    nome
    Given Que estou na página "Criar conta" do site "amazon.com.br" 
    When Preencho os campos obrigatorios exceto o campo "Nome"                         
    Then A mensagem de erro "Insira seu nome" deve ser exibida  

Canario 02: Verificar mensagem de erro ao tentar cadastrar com campo "e-mail" vazio
    [Tags]    email
    Given Que estou na página "Criar conta" do site "amazon.com.br"
    When Preencho os campos obrigatorios exceto o campo "E-mail"       
    Then A mensagem de erro "Digite seu e-mail ou número de telefone celular" deve ser exibida

Canario 03: Verificar mensagem de erro ao tentar cadastrar com campo "Senha" vazio
    [Tags]    senha
    Given Que estou na página "Criar conta" do site "amazon.com.br"
    When Preencho os campos obrigatorios exceto o campo "Senha"               
    Then A mensagem de erro "Mínimo de 6 caracteres necessários" deve ser exibida  

Canario 04: Verificar mensagem de erro ao tentar cadastrar com campo "Insira a senha nova mais uma vez" vazio 
    [Tags]    checar
    Given Que estou na página "Criar conta" do site "amazon.com.br"
    When Preencho os campos obrigatorios exceto o campo "Checar senha"   
    Then A mensagem de erro "Digite sua senha novamente" deve ser exibida    


Canario 05: Verificar mensagem de erro ao tentar cadastrar com e-mail inválido
    [Tags]    email_invalido
    Given Que estou na página "Criar conta" do site "amazon.com.br"             
    When Preencho os dados obrigatorios com o campo "E-mail" invalido             
    Then A mensagem de erro "Endereço de e-mail ou número de telefone celular errado ou inválido. Corrija e tente novamente." deve ser exibida    

Canario 06: Verificar mensagem de erro ao tentar cadastrar com senha menor que 6 caracteres
    [Tags]    senha_invalida
    Given Que estou na página "Criar conta" do site "amazon.com.br"            
    When Preencho os dados obrigatorios com o campo "Senha" invalido           
    Then A mensagem de erro "Mínimo de 6 caracteres necessários" deve ser exibida 

Canario 07: Verificar mensagem de erro ao tentar cadastrar com senhas diferentes
    [Tags]    senha_diferente
    Given Que estou na página "Criar conta" do site "amazon.com.br"          
    When Preencho os dados obrigatorios com o campo "Senha" e "Checar senha" diferentes            
    Then A mensagem de erro "As senhas não são iguais" deve ser exibida 
    
  
            
            
 
        