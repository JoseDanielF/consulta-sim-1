Given('que estou na tela de criar Paciente') do
  visit '/pacientes/new'
end

When('eu preencho os campos de Nome {string}, Data de Nascimento {string}, CPF {string}, Email {string}, Cep {string}, Cidade {string}, Bairro {string}, Logradouro {string} e Complemento {string}') do |nome, dataNascimento, cpf, email, cep, cidade, bairro, logradouro, complemento|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => dataNascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento

end

When('clico em Create Paciente') do
  click_button 'Create Paciente'
end

Then('eu vejo a mensagem que foi criado com sucesso') do
  page.has_content?('Paciente was successfully created')
end

Then('eu vejo uma mensagem de erro na criacao do paciente') do
  page.has_content?('Data nao pode ser no futuro')
end
