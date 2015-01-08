class AddWordsToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :words, :string
  end
end
