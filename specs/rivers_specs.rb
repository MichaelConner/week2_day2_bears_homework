require('minitest/autorun')
require('minitest/rg')
require_relative('../rivers')
require_relative('../fish')

class TestRivers < MiniTest::Test

  def setup

    @fluffy = Fish.new("fluffy")
    @fish2 = Fish.new("fish2")
    @fish3 = Fish.new("fish3")

    @volga = Rivers.new("volga")
    @colorado = Rivers.new("colorado",[@fish2, @fish3])

  end

  def test_river_has_name
    assert_equal("volga", @volga.name)
  end

  def test_river_has_fish_stock__nil
    assert_equal(0, @volga.fish_count)
  end

  def test_river_has_fish_stock__2
    assert_equal(2, @colorado.fish_count)
  end

  def test_add_fish_to_river
    @colorado.add_fish_to_river(@fluffy)
    assert_equal(3, @colorado.fish_count)
  end

  def test_remove_fish_from_river
    @colorado.remove_fish_from_river(@fish2)
    assert_equal(1, @colorado.fish_count)
  end

end
