class AddValueToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :value, :integer
  end
end
