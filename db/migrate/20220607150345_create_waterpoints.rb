class CreateWaterpoints < ActiveRecord::Migration[7.0]
  def change
    create_table :waterpoints do |t|
      t.string :name
      t.string :waterpoint_type
      t.string :address
      t.boolean :kiosk
      t.references :network, null: false, foreign_key: true

      t.timestamps
    end
  end
end
