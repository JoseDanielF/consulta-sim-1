Feature: paciente
  As a paciente
  I want to criar meu perfil
  So that possa utilizar o sistema

  Scenario: Novo paciente
    Given que estou na tela de criar Paciente
    When eu preencho os campos de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com', Cep '55415-000', Cidade 'Quipapa', Bairro 'Centro', Logradouro 'Travessa da Conceicao' e Complemento 'Casa'
    And clico em Create Paciente
    Then eu vejo a mensagem que foi criado com sucesso

