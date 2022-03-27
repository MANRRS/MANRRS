class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :set_user, if: :user_signed_in?
private
    #this sets the cookie to have a username var that stores the id of the current admin that is logged in.
    def set_user
        cookies[:username] = current_user.id
    end

end
