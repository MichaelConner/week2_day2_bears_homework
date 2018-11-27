require('minitest/autorun')
require('minitest/rg')
require_relative('../rivers')

class TestRivers < MiniTest::Test

def setup
end

def test_river_has_name
  river = Rivers.new("The Amazon")
  assert_equal("The Amazon", river.name)
end





end
