class ChangeTowerToTowerId < ActiveRecord::Migration
  def change
  	change_table :apartments do |t|
  		t.rename :tower, :tower_id
  	end	
  end
end
