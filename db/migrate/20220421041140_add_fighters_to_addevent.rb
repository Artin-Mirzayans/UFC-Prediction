class AddFightersToAddevent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :f3, :string, null:false
    add_column :events, :f4, :string, null:false
  end
end
