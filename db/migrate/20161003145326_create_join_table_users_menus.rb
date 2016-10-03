class CreateJoinTableUsersMenus < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :menus do |t|
      t.index [:user_id, :menu_id]
      t.index [:menu_id, :user_id]
    end
  end
end
