class AddPredictionStatus < ActiveRecord::Migration[7.0]
  def change
    add_column :predictions, :f1haspredict, :boolean, default: false
    add_column :predictions, :f2haspredict, :boolean, default: false
  end
end
