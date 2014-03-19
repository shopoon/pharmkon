class AssignController < ApplicationController
  before_filter :validates_user_attirbutes_exist
  
  def index
    Group.reload
    @groups = Group.all
  end

  def edit
    @labolatories = Labolatory.all.inject({}) {|h, labo|
      h[labo.name] = labo.id
      h
    }
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

  def update
    apply = current_user.apply
    convert_params = {}
    params["apply"].each do |key, value|
      convert_params[key] = value.to_i
    end
    apply.update_attributes(convert_params)
    apply.save
    redirect_to action: :index
  end
end
