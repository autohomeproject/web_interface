class DashboardController < ApplicationController
    def index
        @active_devices = Device.find_all_by_active(true);
    end
end
