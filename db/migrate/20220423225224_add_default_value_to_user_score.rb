class AddDefaultValueToUserScore < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:users, :correct_fg, 0)
    change_column_default(:users, :correct_mg, 0)
    change_column_default(:users, :incorrect_fg, 0)
    change_column_default(:users, :incorrect_mg, 0)
  end
end
