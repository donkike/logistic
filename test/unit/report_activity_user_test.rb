require 'test_helper'

class ReportActivityUserTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ReportActivityUser.new.valid?
  end
end
