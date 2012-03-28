class ConditionSet < ActiveRecord::Base
    belongs_to :user
    has_many :condition_relations
end
