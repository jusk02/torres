class ChangeTowerToInteger < ActiveRecord::Migration
  def change
  	change_column :apartments, :tower, :integer
  end
end
