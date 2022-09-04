require "test_helper"

class ConsultaTest < ActiveSupport::TestCase
  test 'criar consulta valida' do
    paciente = Paciente.new(nome:"Daniel", data_nascimento:"17-02-2001", cpf:"013.862.694-41", email:"danielduarte@gmail.com")
    paciente.endereco = Endereco.new(cep:"55415-000", cidade:"Quipapa", bairro:"Centro", logradouro:"Travessa da Conceicao", complemento:"Casa", paciente_id: paciente.id)
    assert paciente.save

    medico = Medico.new(nome:"Arthur", cpf:"013.862.694.41", email:"arthurdhiego@gmail.com", especialidade:"Cardiologista", crm:"19871234")
    assert medico.save

    consulta = Consulta.new(data:"21-12-2022", horario:"09:00", medico_id: medico.id, paciente_id: paciente.id)
    assert consulta.save
  end

  test 'criar consulta invalida' do
    paciente = Paciente.new(nome:"Daniel", data_nascimento:"17-02-2001", cpf:"013.862.694-41", email:"danielduarte@gmail.com")
    paciente.endereco = Endereco.new(cep:"55415-000", cidade:"Quipapa", bairro:"Centro", logradouro:"Travessa da Conceicao", complemento:"Casa", paciente_id: paciente.id)
    assert paciente.save

    medico = Medico.new(nome:"Arthur", cpf:"013.862.694.41", email:"arthurdhiego@gmail.com", especialidade:"Cardiologista", crm:"19871234")
    assert medico.save

    consulta = Consulta.new(data:"21-12-2000", horario:"09:00", medico_id: medico.id, paciente_id: paciente.id)
    assert_not consulta.save
  end
end
