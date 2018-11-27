require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')

class TestBears < MiniTest::Test

def setup
end

def test_bear_has_name
  bear = Bears.new("Sacha", "Grizzly")
  assert_equal("Sacha", bear.name)
end

def test_bear_has_type
  bear = Bears.new("Sacha", "Grizzly")
  assert_equal("Grizzly", bear.type)
end



end
