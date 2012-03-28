class ActionSet < ActiveRecord::Base
    belongs_to :user
    has_many :action_relations
end
