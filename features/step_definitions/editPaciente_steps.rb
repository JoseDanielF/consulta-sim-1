
Given ('que existe um paciente de Nome {string}, Data de Nascimento {string}, CPF {string}, Email {string}, Cep {string}, Cidade {string}, Bairro {string}, Logradouro {string} e Complemento {string}') do |nome, dataNascimento, cpf, email, cep, cidade, bairro, logradouro, complemento|
  visit '/pacientes/new'
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => dataNascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
  click_button 'Create Paciente'
  visit '/pacientes'
end

When('clico no paciente de Nome {string}') do |nome|
  click_on "#{nome}"
end

When('clico em Edit') do
  click_on 'Edit'
end

When('preencho o campo de Logradouro {string}') do |complemento|
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento

end

When('preencho o campo de Cpf {string}') do |cpf|
  fill_in 'paciente[cpf]', :with => cpf

end

When('clico em Update Paciente') do
  click_button 'Update Paciente'
end

Then('eu vejo a mensagem que foi alterado com sucesso') do
  page.has_content?('Paciente was successfully updated.')
end

Then('eu vejo a mensagem de erro ao editar paciente') do
  page.has_content?('Cpf formato ou numero errado')
end
