class DeviceType < ActiveRecord::Base
    validates :name, :presence => true
    validates :module_name, :presence => true
    validates :data_type, :presence => true
    validates :data_flow, :presence => true
    validates :unit, :presence => true
    has_many :devices
end
