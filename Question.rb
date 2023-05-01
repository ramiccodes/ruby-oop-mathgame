randomInt1 = (rand*21).to_i
randomInt2 = (rand*21).to_i

class Question 
  attr_accessor :first_num, :second_num, :answer

  def initialize(first, second)
    @first_num = first
    @second_num = second
  end
  
  def add_numbers
    @first_num + @second_num
  end

  def ask_question
    puts "What does #{@first_num} plus #{@second_num} equal to?"
  end
end

q = Question.new(randomInt1, randomInt2)

puts q.ask_question
puts q.add_numbers

