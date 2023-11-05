puts 'Question loaded...'

class Question

  # Getter method for initilized numbers
  attr_reader :num1, :num2

  # Properties for the random numbers to exist
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def text
    "What is #{num1} + #{num2}?"
  end

  # Method to check if a given answer is correct
  def correct?(answer)
    answer == num1 + num2
  end

end