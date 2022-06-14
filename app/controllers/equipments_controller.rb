class EquipmentsController < ApplicationController
  def index
    @service = Service.find(params[:service_id])
    @equipments = @service.equipments

    respond_to do |format|
      format.html
      format.text { render partial: 'equipments/input', locals: { equipments: @equipments }, formats: [:html] }
    end
  end
end
