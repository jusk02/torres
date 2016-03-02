class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :number
      t.string :tower
      t.integer :floor

      t.timestamps null: false
    end
  end
end
