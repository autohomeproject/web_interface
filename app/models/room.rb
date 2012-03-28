class Room < ActiveRecord::Base
    validates :name, :presence => true
    validates :floor, :presence => true
    validates :description, :presence => true
    has_many :locations
end
