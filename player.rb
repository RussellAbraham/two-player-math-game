puts 'Player loaded...'

class Player

  # Method to display the player's current score, name, and lives
  attr_reader :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @live = 3
  end

  # Method to answer a question, decrementing lives if the answer is incorrect
  def answer_question(correct)
    if correct
      @score += 1
      puts "Correct! #{@name}'s score : #{@score}"
    else
      @lives -= 1
      puts "Incorrect! #{@name} loses a life. Lives remaining: #{@lives}"
    end
  end

  # Method to check if the player has lost all lives
  def hase_lost?
    @lives <= 0
  end

end