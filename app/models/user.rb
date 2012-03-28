class User < ActiveRecord::Base
    validates :name, :presence => true
    validates :last_login, :presence => true
    validates :password_hash, :presence => true
    validates :last_ip, :presence => true
    validates :phone_number, :presence => true
    has_many :device_permissions
    has_many :conditions
    has_many :condition_sets
    has_many :actions
    has_many :action_sets
    has_many :rule_sets
end
