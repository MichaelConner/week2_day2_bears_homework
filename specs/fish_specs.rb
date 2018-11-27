require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup
  end

  def test_fish_has_name
    fish = Fish.new("Fluffy")
    assert_equal("Fluffy", fish.name)
  end

end
