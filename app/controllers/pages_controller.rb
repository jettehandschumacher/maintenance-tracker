class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @tasks = Task.all
  end

  def statistics
    @tasks = Task.all
    @waterpoints = Waterpoint.all
    @networks = Network.all
  end
end
