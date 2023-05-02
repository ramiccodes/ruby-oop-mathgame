require './Question.rb'
require './Player.rb'

class Game

  attr_accessor :answer

  def initialize
    @p1 = Player.new(1)
    @p2 = Player.new(2)
    @current_player = @p1
    @players = [@p1, @p2]
    @turn = 0
  end

  def new_round
    @q = Question.new()
    question_answer = @q.add_numbers
    print "Player #{@current_player.get_player_num}: "
    @q.ask_question
    player_answer = gets.chomp.to_i

    if player_answer == question_answer
      puts "Yup! That's right!"
      change_round
    else
      puts "No! That's wrong!"
      @current_player.decrease_lives
      change_round
    end
  end

  def change_round
    puts "P#{@p1.get_player_num}: #{@p1.lives}/3 vs P#{@p2.get_player_num}: #{@p2.lives}/3"
    game_over?
    puts "----- NEW TURN -----"
    change_turn
    new_round
  end

  def change_turn
    @turn += 1
    @current_player = @players[@turn % 2]
  end

  def game_over?
    if @current_player.lives == 0
      change_turn
      puts "Player #{@current_player.get_player_num} wins with a score of #{@current_player.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit(0)
    end
  end
end

g = Game.new

g.new_round