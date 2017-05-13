class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session

  def logged_in?
    !!current_user
  end
end
