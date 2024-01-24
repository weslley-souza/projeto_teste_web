Olá! aqui, eu faço dois testes. O primeiro acompanhando o curso "Automação de Testes com Robot Framework - Básico e Avançado" com a instrutora May Fernandes. O segundo, criei para testar meu progresso após ter concluido o curso supracitado
    
    1° TESTE_PRODUTO - Feito acompanhando as aulas do curso.

        Testes realizado no site Amazon, verificando a categoria "Ofertas do Dia".
        Pesquisa por produto "Xbox Series S", adiciona ao carrinho e remove o produto. 


    2° CADASTRO_AMAZON
        Neste teste Verifico como o software se comporta ao tentar realizar cadastro inserindo dados inválidos.

       


    COMANDOS DE EXECUÇÃO

    -d -> Para Guardar Resultados do Teste na pasta resultados

    -i -> Para Executar testes expecificos utilizando "TAGS" -> -i nome
    EX : robot -d ../resultados -i nome  .\cadastro_amazon.robot

    -e -> Para não executar testes com uma "TAG" especifica ->  -e email
    EX : robot -d ../resultados -e email  .\cadastro_amazon.robot

    -v -> para setar uma variável no momento da execução do teste
    EX : robot -v Browser:Firefox  -d ../resultados -i nome  .\cadastro_amazon.robot

    -t -> Para Executar somente um teste de uma suite
    EX : robot -t nome_teste_case -d ../resultados -i nome  .\cadastro_amazon.robot