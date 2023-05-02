class Player
  attr_accessor :lives, :player_num

  def initialize(playerNum)
    @player_num = playerNum
    @lives = 3
  end

  def get_lives
    return @lives
  end

  def get_player_num
    return @player_num
  end

  def get_answer
    return @answer
  end

  def decrease_lives
    @lives -= 1
  end
end