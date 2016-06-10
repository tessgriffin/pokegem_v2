require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/pokemongem.rb'

class PokemonGemTest < Minitest::Test
  def test_get_json_response
    type = PokemonGem.get_json("type", 1)

    assert_equal "normal", type[:name]
  end

  def test_pokemon_json_endpoint_with_name
    pikachu = PokemonGem.get_json("pokemon", "pikachu")

    assert_equal "pikachu", pikachu[:name]
    assert_equal 25, pikachu[:id]
  end

  def test_can_return_object
    pokemon = PokemonGem.get_obj("pokemon", 25)

    assert_equal "pikachu", pokemon.name 
  end
end