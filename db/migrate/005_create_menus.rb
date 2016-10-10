class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :occasion
      t.string :description
      t.timestamps
    end
  end
end
