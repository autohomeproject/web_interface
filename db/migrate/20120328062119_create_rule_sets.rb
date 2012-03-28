class CreateRuleSets < ActiveRecord::Migration
  def change
    create_table :rule_sets do |t|
      t.string :name
      t.integer :action_set_id
      t.integer :condition_set_id
      t.integer :user_id
      t.string :description
      t.boolean :active

      t.timestamps
    end
  end
end
