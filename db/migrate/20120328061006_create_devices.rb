class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.integer :device_type_id
      t.integer :location_id
      t.boolean :active
      t.float :default_value

      t.timestamps
    end
  end
end
