class Device < ActiveRecord::Base
    validates :name, :presence => true
    validates :device_type_id, :presence => true
    validates :location_id, :presence => true
    validates :default_value, :presence => true
    belongs_to :device_type
    belongs_to :location
    has_many :device_permissions
    has_many :conditions
    has_many :actions
end
