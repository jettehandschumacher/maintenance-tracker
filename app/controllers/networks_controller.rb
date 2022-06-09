class NetworksController < ApplicationController
  def index
    @networks = Network.all
    @waterpoints = Waterpoint.all
    @tasks = Task.all
  end

  def show
    @network = Network.find(params[:id])
  end
end
