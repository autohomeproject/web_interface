class User < ActiveRecord::Base
    @ip_regex = /^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$/


    validates :name, :presence => true
    validates :last_login, :presence => true
    validates :password_hash, :presence => true
    validates :last_ip,
            :presence => true,
            :format => { :with => @ip_regex }
    validates :phone_number, :presence => true
    has_many :device_permissions
    has_many :conditions
    has_many :condition_sets
    has_many :actions
    has_many :action_sets
    has_many :rule_sets
end
