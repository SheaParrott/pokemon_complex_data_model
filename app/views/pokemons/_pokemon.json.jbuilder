json.extract! pokemon, :id, :name, :national_dex_number, :region_id, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
