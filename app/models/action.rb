class Action < ActiveRecord::Base
    validates :action_set_id, :presence => true
    validates :device_id, :presence => true
    validates :value, :presence => true
    validates :duration, :presence => true
    belongs_to :device
    belongs_to :action_set
end
