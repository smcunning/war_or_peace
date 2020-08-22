require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

class Game

  def welcome_message
    p "Welcome to War! (or Peace) This game will be played with 52 cards."
    p "The players today are #{player1.name} and #{player2.name}."
    p "Type 'GO' to start the game!"
    p "------------------------------------------------------------------"
  end

end
