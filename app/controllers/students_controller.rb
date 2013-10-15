class StudentsController < ApplicationController

  def index
    @users = User.users_orderd_by_rank   
    @average_map = Statistics.average_map
  end

  def show
    @user = User.find(params[:id])
  end
end
