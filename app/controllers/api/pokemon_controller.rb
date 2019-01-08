class Api::PokemonController < ApplicationController
  def index
    @pokemon = Pokemon.all

    render json: @pokemon.map do |region|
      {
        name: name, 
        dex_number: national_dex_number, 
        region: pokemon.region.region
      }
    end
  end
end
