class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :room_id
      t.string :description

      t.timestamps
    end
  end
end
