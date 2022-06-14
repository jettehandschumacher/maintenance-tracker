class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tasks = Task.all
  end

  def statistics
  end

  def presentation
    render layout: "special_layout"
  end
end
