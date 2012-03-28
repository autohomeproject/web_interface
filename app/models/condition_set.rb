class ConditionSet < ActiveRecord::Base
    validates :name, :presence => true
    validates :user_id, :presence => true
    belongs_to :user
    has_many :condition_relations
end
