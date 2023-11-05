puts 'MathGame loaded...'

require './question.rb'

class MathGame

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players.first
  end

  def start_turn
  
  end

end