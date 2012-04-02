# The Dashboard configures the front page of the website.

class DashboardController < ApplicationController
    def index
        @active_devices = Device.find_all_by_active(true);
        @active_rule_sets = RuleSet.find_all_by_active(true);
    end
end
