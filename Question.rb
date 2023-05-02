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
    print "What does #{@first_num} plus #{@second_num} equal to? "
  end
end

