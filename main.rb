require './Question.rb'
require './Player.rb'

player1 = Player.new(1,3)
player2 = Player.new(2,3)

# randomInt1 = (rand*21).to_i
# randomInt2 = (rand*21).to_i


# q = Question.new(randomInt1, randomInt2)

# player_answer = 0


# puts player1.get_lives
# puts player1.decrease_lives

while player1.get_lives > 0
  randomInt1 = (rand*21).to_i
  randomInt2 = (rand*21).to_i
  q = Question.new(randomInt1, randomInt2)
  question_answer = q.add_numbers

  print "Player #{player1.get_player_num}: "
  print "#{q.ask_question}"
  player_answer = gets.chomp.to_i

  if player_answer == question_answer
    return
  end
  
  player1.decrease_lives
end

# puts "2nd answer: #{answer}"