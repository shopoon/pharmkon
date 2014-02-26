class Admin::ApplicationController < ActionController::Base
  layout 'admin'
  require 'pp'
  
  before_filter :authenticate_admin_user!
  before_filter :set_admin_user

  def set_admin_user
    if current_admin_user
      @admin_user = current_admin_user
    end
  end


end
