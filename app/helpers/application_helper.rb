module ApplicationHelper

  def logo
    image_tag("logo.png", :alt => "SimTrans", :class => "round")
  end

  def title
    base_title = "Simple translation service"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end