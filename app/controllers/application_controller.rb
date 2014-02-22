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

# protected
#
# def devise_parameter_sanitizer
#   if resource_class == User
#     User::ParameterSanitizer.new(User, :user, params)
#   elsif resource_class == Admin::User
#     Admin::User::ParameterSanitizer.new(Admin::User, :admin_user, params)
#   else
#     super
#   end
# end
end
