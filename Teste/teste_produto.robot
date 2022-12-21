*** Settings ***
Documentation          Essa Suite Pesquisa, adiciona e remove um produto 
...                    do carrinho do site amazon.com.br
Resource               ../resources/base_teste.robot
Test Setup             Abrir Navegador
Test Teardown          Fechar Navegador



*** test cases ***
Caso de teste 01 - Acesso ao menu "Ofertas do Dia"
    [Tags]             menus    categoria                
    Acessar a home do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Acessar o menu "Ofertas do Dia"
    Verificar se aparece a frase "Ofertas e Promoções" 
    Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br" 
    Verificar se aparece a categoria "Dispositivos Amazon e Acessórios"

Caso de teste 02 - Pesquisa de um Produto
    [Tags]             busca_produtos    lista_produtos         
    Acessar a home do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto pesquisado "Xbox Series S"

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Tags]             adicionar_carrinho
    Acessar a home do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto pesquisado "Xbox Series S"
    Adicionar o produto "Xbox Series S" no carrinho
    Verificar se o produto adicionado foi "Xbox Series S"
 

Caso de Teste 04 - Remover Produto do Carrinho
    [Tags]             remover_carrinho
    Acessar a home do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto pesquisado "Xbox Series S"
    Adicionar o produto "Xbox Series S" no carrinho 
    Verificar se o produto adicionado foi "Xbox Series S"
    Remover o produto "Xbox Series S" do carrinho
    Verificar se o carrinho fica vazio




    


