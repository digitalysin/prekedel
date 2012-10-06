class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
    def authenticate_user!
      require_login
    end
end
