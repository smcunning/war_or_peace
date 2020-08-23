class Game
  attr_reader :turn_count, :player1, :player2

  def initialize(player1, player2)
    @turn_count = 1
    @player1    = player1
    @player2    = player2
  end

  def welcome_message
    p "Welcome to War! (or Peace) This game will be played with 52 cards."
    p "The players today are Aurora and Megan."
    p "Type 'GO' to start the game!"
    p "------------------------------------------------------------------"
  end

  def turn_message(turn)
    case turn.type
    when :basic
      p "Turn #{@turn_count}: #{turn.winner.name} won 2 cards"

    when :war
      p "Turn #{@turn_count}: WAR - #{turn.winner.name} won 6 cards"

    when :mutually_assured_destruction
      p "Turn #{@turn_count}: *mutually assured destruction* 6 cards removed from play"
    end
  end

  def run

    while @player1.deck.cards != [] || @player2.deck.cards != [] do
      @turn = Turn.new(@player1, @player2)
      @turn.pile_cards
      @turn.award_spoils(@turn.winner)
      turn_message(@turn)
      @turn_count += 1

        if @turn_count == 1000000
          p "---- DRAW ----"
          break
        end
      end
      p "*~*~*~* #{turn.winner.name} has won the game! *~*~*~*"
  end


  def start
    welcome_message
    if gets.chomp.upcase == "GO"
      run

    else
      p "See you next time!"
    end
  end
end
