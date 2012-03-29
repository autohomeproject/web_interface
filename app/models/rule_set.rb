class RuleSet < ActiveRecord::Base
    validates :name, :presence => true
    validates :condition_set_id, :presence => true
    validates :action_set_id, :presence => true
    validates :user_id, :presence => true
    belongs_to :user
    belongs_to :action_set
    belongs_to :condition_set
end
