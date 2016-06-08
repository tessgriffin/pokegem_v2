require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/pokemongem.rb'

class PokemonGemTest < Minitest::Test
  def test_get_json_response
    type = PokemonGem.getJSON("type", 1)

    assert_equal "normal", type[:name]
  end
end