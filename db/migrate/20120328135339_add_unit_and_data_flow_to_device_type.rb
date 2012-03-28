class AddUnitAndDataFlowToDeviceType < ActiveRecord::Migration
  def change
    change_table :device_types do |t|
      t.string :unit
      t.string :data_flow
    end
  end
end
