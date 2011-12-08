module ApplicationHelper

  def title
    base_title = "Simple translation service"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end