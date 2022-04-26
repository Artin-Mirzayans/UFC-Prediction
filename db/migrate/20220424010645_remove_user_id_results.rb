class RemoveUserIdResults < ActiveRecord::Migration[7.0]
  def change
    remove_column :results, :user_id
  end
end
