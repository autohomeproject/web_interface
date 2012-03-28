class Action < ActiveRecord::Base
    belongs_to :device
    belongs_to :action_set
end
