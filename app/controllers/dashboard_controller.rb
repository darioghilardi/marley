class DashboardController < ApplicationController
  layout "main"
  before_filter :authenticate_user!

  def index
    user = current_user || User.new
    @upcoming_tasks = user.tasks.order('deadline DESC')
  end
end
