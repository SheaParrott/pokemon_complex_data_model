class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :national_dex_number
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
