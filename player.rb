class Player
  attr_accessor :name, :lives
  LIVES = 3
  def initialize(name)
    @name = name
    @lives = LIVES
  end

  def lose_life
    self.lives -= 1
  end
end
