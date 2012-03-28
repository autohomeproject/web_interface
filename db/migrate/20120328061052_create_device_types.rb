class CreateDeviceTypes < ActiveRecord::Migration
  def change
    create_table :device_types do |t|
      t.string :name
      t.string :module_name
      t.string :data_type

      t.timestamps
    end
  end
end
