require 'test_helper'

class AverageTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Average.new.valid?
  end
end
