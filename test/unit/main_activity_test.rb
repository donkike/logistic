require 'test_helper'

class MainActivityTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MainActivity.new.valid?
  end
end
