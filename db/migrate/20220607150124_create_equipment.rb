class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :equipment_type
      t.string :name
      t.boolean :archived
      t.boolean :warranty_valid

      t.timestamps
    end
  end
end
