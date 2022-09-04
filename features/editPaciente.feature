Feature: editar paciente
  As a paciente
  I want to editar meu perfil
  So that possa alterar meus dados

  Scenario: Editar um Paciente no sistema
    Given que existe um paciente de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com', Cep '55415-000', Cidade 'Quipapa', Bairro 'Centro', Logradouro 'Travessa da Conceicao' e Complemento 'Casa'
    And clico no paciente de Nome 'José Daniel Florêncio Duarte Filho'
    And clico em Edit
    When preencho o campo de Logradouro 'Travessa da Conceição 18'
    And clico em Update Paciente
    Then eu vejo a mensagem que foi alterado com sucesso


