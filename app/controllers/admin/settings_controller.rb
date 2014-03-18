class Admin::SettingsController < Admin::ApplicationController
  def edit
    @setting = PharmkonSetting.find(params[:id])
  end
end
