class ChangeForRposts < ActiveRecord::Migration[5.2]
  def change
  	change_column :rposts, :content ,:text
  end
end
