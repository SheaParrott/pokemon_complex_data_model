require 'test_helper'

class Api::PokemonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_pokemons_index_url
    assert_response :success
  end

end
