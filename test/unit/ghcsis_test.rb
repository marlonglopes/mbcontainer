require 'test_helper'

class GhcsisTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Ghcsis.new.valid?
  end
end
