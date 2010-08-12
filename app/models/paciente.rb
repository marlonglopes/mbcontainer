class Paciente < ActiveRecord::Base
  attr_accessible :nome, :sobrenome, :mae, :nascimento
end
