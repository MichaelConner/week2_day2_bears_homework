require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')
require_relative('../rivers')
require_relative('../fish')

class TestBears < MiniTest::Test

  def setup
    @fluffy = Fish.new("fluffy")
    @fish2 = Fish.new("fish2")
    @fish3 = Fish.new("fish3")

    @volga = Rivers.new("volga", [])
    @colorado = Rivers.new("colorado", [@fluffy, @fish2, @fish3])

    @sacha = Bears.new("Sacha", "Grizzly")
  end

  def test_bear_has_name
    assert_equal("Sacha", @sacha.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @sacha.type)
  end

  def test_bear_has_empty_stomach
    assert_equal([], @sacha.stomach)
  end

  def test_bear_eats_fish
    # Arrange
    bear = @sacha
    fish = @fluffy
    # Act
    bear.bear_eats_fish(fish)
    # Assert
    assert_equal(fish, bear.stomach[0])
  end

  def test_bear_eats_fish_and_fish_is_removed_from_river
    # Arrange
    bear = @sacha
    river = @colorado
    fish = @fluffy
    fish_count_before = @colorado.fish_count
    # Act
    bear.bear_eats_fish(fish)
    river.remove_fish_from_river(fish)
    # Assert
    assert_equal(fish, bear.stomach[0])
    assert_equal(fish_count_before, @colorado.fish_count + 1)
  end

end
