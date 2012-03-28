class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.integer :device_id
      t.integer :condition_set_id
      t.float :value
      t.integer :comparison
      t.string :json_data

      t.timestamps
    end
  end
end
