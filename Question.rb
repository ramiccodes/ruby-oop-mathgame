class Question 

  def initialize()
    @first_num = (rand*21).to_i
    @second_num = (rand*21).to_i
  end
  
  def add_numbers
    @first_num + @second_num
  end

  def ask_question
    print "What does #{@first_num} plus #{@second_num} equal to? "
  end
end

