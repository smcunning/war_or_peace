require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/game'
require 'minitest/autorun'
require 'minitest/pride'

class GameTest < MiniTest::Test
  #
  # def test_it_exists
  #   card1 = Card.new(:heart, 'Jack', 11)
  #   card2 = Card.new(:heart, '10', 10)
  #   card3 = Card.new(:heart, '9', 9)
  #   card4 = Card.new(:diamond, 'Jack', 11)
  #   card5 = Card.new(:heart, '8', 8)
  #   card6 = Card.new(:diamond, 'Queen', 12)
  #   card7 = Card.new(:heart, '3', 3)
  #   card8 = Card.new(:diamond, '2', 2)
  #   deck1 = Deck.new([card1, card2, card5, card8])
  #   deck2 = Deck.new([card3, card4, card6, card7])
  #   player1 = Player.new("Megan", deck1)
  #   player2 = Player.new("Aurora", deck2)
  #
  #   game = Game.new
  #
  #   assert_instance_of Game, game
  # end
  #
  # def test_it_has_welcome_message
  #   card1 = Card.new(:heart, 'Jack', 11)
  #   card2 = Card.new(:heart, '10', 10)
  #   card3 = Card.new(:heart, '9', 9)
  #   card4 = Card.new(:diamond, 'Jack', 11)
  #   card5 = Card.new(:heart, '8', 8)
  #   card6 = Card.new(:diamond, 'Queen', 12)
  #   card7 = Card.new(:heart, '3', 3)
  #   card8 = Card.new(:diamond, '2', 2)
  #   deck1 = Deck.new([card1, card2, card5, card8])
  #   deck2 = Deck.new([card3, card4, card6, card7])
  #   player1 = Player.new("Megan", deck1)
  #   player2 = Player.new("Aurora", deck2)
  #
  #   game = Game.new
  #
  #   assert_equal "Welcome to War!(or Peace) This game will be played with 52 cards.", game.welcome_message
  # end
  #
  # def test_user_can_tell_it_to_go
  #   card1 = Card.new(:heart, 'Jack', 11)
  #   card2 = Card.new(:heart, '10', 10)
  #   card3 = Card.new(:heart, '9', 9)
  #   card4 = Card.new(:diamond, 'Jack', 11)
  #   card5 = Card.new(:heart, '8', 8)
  #   card6 = Card.new(:diamond, 'Queen', 12)
  #   card7 = Card.new(:heart, '3', 3)
  #   card8 = Card.new(:diamond, '2', 2)
  #   deck1 = Deck.new([card1, card2, card5, card8])
  #   deck2 = Deck.new([card3, card4, card6, card7])
  #   player1 = Player.new("Megan", deck1)
  #   player2 = Player.new("Aurora", deck2)
  #
  #   game = Game.new
  #
  #   #It works is a placeholder - this will eventually prompt the game to start
  #   #assert_equal "it works!", game.welcome_message
  #
  #   #Test for something other than go
  #   assert_equal "Try typing 'GO' to play!", game.start
  # end

  def test_game_can_start_and_run
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)
    deck1 = Deck.new([card1, card2, card5, card8])
    deck2 = Deck.new([card3, card4, card6, card7])
    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)

    game = Game.new

    assert_equal "Turn 1: Megan won 2 cards", game.start

  end

end
