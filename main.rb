require './player.rb'
require './math_game.rb'

class Main
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @math_game = MathGame.new(@player1, @player2)
    puts @player1, @player2, @math_game
  end

  def start_game
    puts "Welcom to the Math Game!"
    loop do
      display_scores
      @math_game.start_turn
      break if game_over?
      switch_player
    end
    display_winner
  end

  def display_scores
    puts 'Current Scores:'
    puts "#{@player1.name}: #{@player1.score}"
    puts "#{@player2.name}: #{@player2.score}"
  end

  def game_over?
    @player1.has_lost? || @player2.has_lost?
  end

  def switch_player
    @math_game.switch_player
  end

  def display_winner
    winner = @player1.has_lost? ? @player2 : @player1
    puts "#{winner.name} wins with a score of #{winner.score}!"
  end

end

main = Main.new
main.start_game