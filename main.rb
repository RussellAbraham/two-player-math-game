require './player.rb'
require './math_game.rb'

class Main
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @math_game = MathGame.new(@player1, @player2)
    puts @player1, @player2, @math_game
  end

end

main = Main.new