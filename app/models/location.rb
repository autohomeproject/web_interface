class Location < ActiveRecord::Base
    validates :name, :presence => true
    validates :room_id, :presence => true
    validates :description, :presence => true
    has_many :devices
    belongs_to :room

    def full_location
        "#{self.room.name} - #{self.name}"
    end

end
