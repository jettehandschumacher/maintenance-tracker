class CreateNetworks < ActiveRecord::Migration[7.0]
  def change
    create_table :networks do |t|
      t.string :address

      t.timestamps
    end
  end
end
