class Admin::TopController < Admin::ApplicationController

  def index
    @force_rank = PharmkonSetting.force_rank?
  end

  def force_rank
    @force_rank = PharmkonSetting.force_rank
    #順位による算出法と切り替える
    PharmkonSetting.force_rank = 1 - @force_rank

    return redirect_to :action => :index
  end
end
