module ApplicationHelper
  # http://railscasts.com/episodes/30-pretty-page-title
  def title(page_title)
    content_for(:title) { page_title }
  end

  def menu_link(title, controller_name)
    link_to title, { :controller => controller_name }, controller.controller_name == controller_name ? { :class => "selected" } : {}
  end
end
