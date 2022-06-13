class CreateWaterpointEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :waterpoint_equipments do |t|
      t.references :equipment, null: false, foreign_key: true
      t.references :waterpoint, null: false, foreign_key: true

      t.timestamps
    end
  end
end
