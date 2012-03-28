class ChangeSetAssociation < ActiveRecord::Migration
  def up
    change_table :conditions do |t|
        t.integer :condition_set_id
    end
    change_table :actions do |t|
        t.integer :action_set_id
    end
  end

  def down
  end
end
