class HomeController < ApplicationController
  def index
    @issues = Issue.order(:last_updated_at => :desc).page(params[:page])
  end
end
