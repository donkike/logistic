require 'test_helper'

class AssignedMainActivityTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert AssignedMainActivity.new.valid?
  end
end
