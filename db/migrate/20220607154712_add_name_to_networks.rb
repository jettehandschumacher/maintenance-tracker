class AddNameToNetworks < ActiveRecord::Migration[7.0]
  def change
    add_column :networks, :name, :string
  end
end
