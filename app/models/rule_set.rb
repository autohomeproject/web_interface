class RuleSet < ActiveRecord::Base
    belongs_to :user
    has_one :action_sets
    has_one :condition_sets
end
