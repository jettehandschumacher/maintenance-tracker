class NetworksController < ApplicationController
  def index
    @networks = Network.all
    @markers = @networks.geocoded.map do |network|
      {
        lat: network.latitude,
        lng: network.longitude
      }
    end

    @waterpoints = Waterpoint.all
    @tasks = Task.all
  end

  def show
    @network = Network.find(params[:id])
    @markers = [{lat: @network.latitude, lng: @network.longitude }]
  end
end
