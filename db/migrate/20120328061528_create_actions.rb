class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :device_id
      t.float :value
      t.float :duration
      t.string :json_data

      t.timestamps
    end
  end
end
