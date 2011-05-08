class DashboardController < ApplicationController
  layout "main"

  def index
    user = current_user || User.new
    @upcoming_tasks = user.tasks.order('deadline DESC')
  end
end
