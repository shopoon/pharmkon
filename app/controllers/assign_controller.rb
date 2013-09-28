class AssignController < ApplicationController
  
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
