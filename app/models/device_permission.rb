class DevicePermission < ActiveRecord::Base
    has_many :users
    has_many :devices
end
