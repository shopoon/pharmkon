class Admin::AssignController < Admin::ApplicationController
  def index
    Group.reload
    @groups = Group.all
  end
  
  def show
    @labolatory = Labolatory.find(params[:id])
    Group.reload
    @group = Group.get(@labolatory)
    @users = User.users_orderd_by_rank.select {|user|
      user.apply.first == @labolatory.id ||
        user.apply.second == @labolatory.id ||
        user.apply.third == @labolatory.id
    }
  end
end
