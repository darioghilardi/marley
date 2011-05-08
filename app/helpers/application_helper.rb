module ApplicationHelper
  # http://railscasts.com/episodes/30-pretty-page-title
  def title(page_title)
    content_for(:title) { page_title }
  end

  def menu_link(title, controller)
    link_to title, { :controller => controller }, current_page?(:controller => controller) ? { :class => "selected" } : {}
  end
end
