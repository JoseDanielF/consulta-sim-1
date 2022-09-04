require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test "criar medico valido" do
    medico = Medico.new(nome:"Arthur", cpf:"013.862.694.41", email:"arthurdhiego@gmail.com", especialidade:"Cardiologista", crm:"19871234")
    assert medico.save
  end

  test "criar medico invalido" do
    medico = Medico.new(nome:"", cpf:"013.862.694.41", email:"arthurdhiego@gmail.com", especialidade:"Cardiologista", crm:"19871234")
    assert_not medico.save
  end

  test "criar medico sem email" do
    medico = Medico.new(nome:"Arthur", cpf:"013.862.694.41", email:"", especialidade:"Cardiologista", crm:"19871234")
    assert_not medico.save
  end

  test "criar medico sem crm" do
    medico = Medico.new(nome:"Arthur", cpf:"013.862.694.41", email:"arthurdhiego@gmail.com", especialidade:"Cardiologista", crm:"")
    assert_not medico.save
  end
end
