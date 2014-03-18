class Admin::StudentsController < Admin::ApplicationController
  def index
    @students = User.all
  end

  def edit
    @student = User.find(params[:id])
  end

  def update
    @student = User.find(params[:id])
    if @student.update_attributes(params[:user])
      return redirect_to :action => :index, :notice => "更新に成功しました"
    else
      return render :action => :edit, :notice => "更新に失敗しました"
    end
  end

  def show
    @student = User.find(params[:id])
  end

  def destroy
    @student = User.find(params[:id])
    @student.destroy
    return redirect_to :action => :index, :notice => "削除に以降しました"
  end
end
