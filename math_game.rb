puts 'MathGame loaded...'

require './question.rb'

class MathGame

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players.first
  end

  # Method to start the game loop
  def start_turn
    question = generate_question
    puts "#{current_player.name}, what is #{question.text}?"
    answer = gets.chomp.to_i
    correct = question.correct?(answer)
    current_player.answer_question(correct)
  end

  # Method to generate a new question
  def generate_question
    Question.new(rand(1..20), rand(1..20))
  end

  # Method to switch the current player
  def switch_player
    @current_player = (current_player == @players.first) ? @players.last : @players.first
  end

  # Method to announce the winner at the end of the game
  def announce_winner
    winner = @players.max_by(&:score)
    puts "#{winner.name} wins with a score of #{winner.score}!"
  end

  def current_player
    @current_player
  end
  
end