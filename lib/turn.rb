class Turn
attr_reader :player1, :player2, :spoils_of_war

  def initialize(player1, player2)
    @player1       = player1
    @player2       = player2
    @spoils_of_war = []
  end

  def type
    if (player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)) && (player1.deck.rank_of_card_at(2) == player2.deck.rank_of_card_at(2))
      #Need to come up with solution when player doesn't have enough cards
        return :mutually_assured_destruction

    elsif (player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0))
      return :war

    else
      :basic
    end
  end

  def winner
    case type
    when :basic
      if (player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0))
        return player1

      elsif (player2.deck.rank_of_card_at(0) > player1.deck.rank_of_card_at(0))
        return player2
      end

    when :war
      if (player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2))
        return player1

      elsif (player2.deck.rank_of_card_at(2) > player1.deck.rank_of_card_at(2))
        return player2
      end

    when :mutually_assured_destruction
      return "No Winner"
    end
  end

  def pile_cards
    case type

    when :basic
      spoils_of_war << player1.deck.remove_card
      spoils_of_war << player2.deck.remove_card


    when :war
      3.times do
        spoils_of_war << player1.deck.remove_card
        spoils_of_war << player2.deck.remove_card
      end

    when :mutually_assured_destruction
      3.times do
        player1.deck.remove_card
        player2.deck.remove_card
      end
    end
  end

  def award_spoils(winner)
    if winner == "No Winner"
      return "There are no cards."
    else
      spoils_of_war.each do |card|
        winner.deck.add_card(card)
      end
    end
  end
end
