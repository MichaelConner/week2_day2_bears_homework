class Rivers

  attr_reader :name, :fish_stock

  def initialize(name, fish_stock = [])
    @name = name
    @fish_stock = fish_stock
  end

  def fish_count
    @fish_stock.length
  end

  def add_fish_to_river(fish)
    @fish_stock << fish
  end

  def remove_fish_from_river(fish)
    index = @fish_stock.index(fish)
    @fish_stock.slice!(index, 1)
  end

end
