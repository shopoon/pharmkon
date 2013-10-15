class ApplicationController < ActionController::Base
  require "pp"
  protect_from_forgery

  http_basic_authenticate_with :name => "name", :password => "password" if Rails.env.staging?

  before_filter :authenticate_user!
  before_filter :set_user
  
  def set_user
    if current_user
      @user = current_user
    end
  end

  PER_PAGE = 20
end
