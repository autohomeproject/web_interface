class Condition < ActiveRecord::Base
    validates :device_id, :presence => true
    validates :value, :presence => true
    validates :comparison, :presence => true
    belongs_to :device
    belongs_to :condition_set

    def comparison_string(c = self.comparison)
      case c
      when 0
        'equal'
      when 1
        'less than'
      when 2
        'greater than'
      else
        'invalid comparison'
      end
    end
end

