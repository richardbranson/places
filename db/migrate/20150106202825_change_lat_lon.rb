class ChangeLatLon < ActiveRecord::Migration
  def change
  	change_column :venues, :lat, :string
  	change_column :venues, :lon, :string
  end
end
