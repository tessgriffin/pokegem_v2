require 'net/http'
require 'json'
require 'ostruct'

class PokemonGem
  def self.get_json(resource, id)
    base_uri = "http://pokeapi.co/api/v2/"
    JSON.parse(Net::HTTP.get(URI(base_uri + "#{resource}/#{id}/")), symbolize_names: true)
  end

  def self.get_obj(resource, id)
    base_uri = "http://pokeapi.co/api/v2/"
    response = JSON.parse(Net::HTTP.get(URI(base_uri + "#{resource}/#{id}/")))
    OpenStruct.new(response)
  end
end