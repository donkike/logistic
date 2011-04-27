require 'test_helper'

class VmoduleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Vmodule.new.valid?
  end
end
