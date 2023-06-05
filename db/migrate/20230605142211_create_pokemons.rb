class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.integer :number
      t.string :name
      t.string :image
    
      t.timestamps
    end
    create_table :pokemon_pokemon_types, id: false do |t|
      t.belongs_to :pokemons
      t.belongs_to :pokemon_types
    end
  end
end
