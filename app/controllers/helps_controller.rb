class HelpsController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_before_filter :set_user
  def index
    
  end
end
