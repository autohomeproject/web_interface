class CreateDeviceTypes < ActiveRecord::Migration
  def change
    create_table :device_types do |t|
      t.string :name
      t.string :module_name
      t.string :data_type
      t.string :data_flow
      t.string :unit

      t.timestamps
    end
  end
end
