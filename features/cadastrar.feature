#language: pt

Funcionalidade: Cadastrar um carro

Contexto: 
    Dado que estou na tela de início
    Quando tocar no botão cadastrar
    Então devo ver a tela de Cadastro

Cenário: Cadastrar um carro
    Dado que estou na tela Cadastrar
    Então tocar no botão cadastrar
    E possuo os seguintes dados para cadastro: 
      | modelo | Nissan March |
      | ano    | 2017         |
      | placa  | ABC1234      |
      | km     | 18000        |
      | valor  | 28.000,00    |
    Quando faço o cadastro de um novo carro