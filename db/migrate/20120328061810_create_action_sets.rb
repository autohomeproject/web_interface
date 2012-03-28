class CreateActionSets < ActiveRecord::Migration
  def change
    create_table :action_sets do |t|
      t.string :name
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
