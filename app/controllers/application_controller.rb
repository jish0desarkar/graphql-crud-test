class ApplicationController < ActionController::Base
    def current_user
        # If test situation when user is logged in
        User.first
      end
end
