class AddRpostIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :rpost_id, :integer
  end
end
