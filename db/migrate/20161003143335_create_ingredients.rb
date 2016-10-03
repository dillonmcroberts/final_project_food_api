class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :price_level
      t.integer :availability
      t.timestamps
    end
  end
end
