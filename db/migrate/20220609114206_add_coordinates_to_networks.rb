class AddCoordinatesToNetworks < ActiveRecord::Migration[7.0]
  def change
    add_column :networks, :latitude, :float
    add_column :networks, :longitude, :float
  end
end
