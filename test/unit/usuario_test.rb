require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Usuario.new.valid?
  end
end
