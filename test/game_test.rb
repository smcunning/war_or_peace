require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/game'
require 'minitest/autorun'
require 'minitest/pride'

class GameTest < MiniTest::Test

  def test_it_exists

    game = Game.new

    assert_instance_of Game, game
  end

end
