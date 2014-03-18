class Admin::LabolatoriesController < Admin::ApplicationController

  def index
    @labolatories = Labolatory.all
  end

  def new
    @labolatory = Labolatory.new
  end

  def create
    @labolatory = Labolatory.new(params[:labolatory])
    if @labolatory.save
      return redirect_to :action => :index, :notice => "作成に成功しました"
    else
      return render :action => :new, :notice => "作成に失敗しました"
    end
  end

  def show
    @labolatory = Labolatory.find(params[:id])
  end

  def edit
    @labolatory = Labolatory.find(params[:id])
  end
  
  def update
    @labolatory = Labolatory.find(params[:id])
    if @labolatory.update_attributes(params[:labolatory])
      return redirect_to :action => :index, :notice => "更新に成功しました"
    else
      return render :action => :edit, :notice => "更新に失敗しました"
    end
  end

  def destroy
    @labolatory = Labolatory.find(params[:id])
    @labolatory.destroy

    return redirect_to :action => :index
  end
end
