require 'net/http'
require 'json'

class PokemonGem
  def self.getJSON(resource, id)
    base_uri = "http://pokeapi.co/api/v2/"
    JSON.parse(Net::HTTP.get(URI(base_uri + "#{resource}/#{id}/")), symbolize_names: true)
  end
end