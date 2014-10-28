class Admin::AssignController < Admin::ApplicationController
  def index
    Group.reload
    @groups = Group.all
  end
end
