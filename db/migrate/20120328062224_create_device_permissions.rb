class CreateDevicePermissions < ActiveRecord::Migration
  def change
    create_table :device_permissions do |t|
      t.integer :user_id
      t.integer :device_id

      t.timestamps
    end
  end
end
