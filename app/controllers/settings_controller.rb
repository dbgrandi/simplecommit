class SettingsController < ApplicationController

  def index
    redirect_to :root unless current_user
    
  end
  
end
