require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

class Game
  attr_accessor :turn_count

  def initialize
    @turn_count = 0
    
  end

  def welcome_message
    p "Welcome to War! (or Peace) This game will be played with 52 cards."
    p "The players today are Aurora and Megan."
    p "Type 'GO' to start the game!"
    p "------------------------------------------------------------------"
  end

  def start
    @game.welcome_message
    if gets.chomp.upcase == "GO"
      self.run

    else
      p "Try typing 'GO' to play!"
    end
  end

  def run
    while turn_count < 1000000
      @turn_count += 1

      if turn.type == :basic
        p "Turn #{turn_count}: #{turn.winner} won 2 cards"
      elsif turn.type == :war
        p "WAR - #{turn.winner} won 6 cards"
      else
        p "*mutually assured destruction* 6 cards removed from play"
      end
    end
  end
end
