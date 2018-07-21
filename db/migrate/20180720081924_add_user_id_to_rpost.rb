class AddUserIdToRpost < ActiveRecord::Migration[5.2]
  def change
    add_column :rposts, :user_id, :integer
  end
end
