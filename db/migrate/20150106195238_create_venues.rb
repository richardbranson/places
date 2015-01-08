class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.integer :lat
      t.integer :lon

      t.timestamps
    end
  end
end
