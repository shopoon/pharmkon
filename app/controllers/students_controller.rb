class StudentsController < ApplicationController

  def index
    @users = User.users_orderd_by_rank   
    @users = Kaminari.paginate_array(@users).page(params[:page].to_i).per(PER_PAGE)
  end

  def show
    @user = User.find(params[:id])
  end
end
