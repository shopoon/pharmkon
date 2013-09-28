class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!
  before_filter :set_user
  
  def set_user
    if current_user
      @user = current_user
    end
  end
end
