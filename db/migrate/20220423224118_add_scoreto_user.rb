class AddScoretoUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :correct_fg, :integer
    add_column :users, :correct_mg, :integer
    add_column :users, :incorrect_fg, :integer
    add_column :users, :incorrect_mg, :integer
  end
end
