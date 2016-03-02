class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :cc
      t.integer :apartment

      t.timestamps null: false
    end
  end
end
