class AddCreatorIdToMenus < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :creator_id, :integer
  end
end
