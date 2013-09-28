class AssignController < ApplicationController
  
  def index
    @groups = Group.all
  end
end
