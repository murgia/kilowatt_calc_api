class AppliancesController < ApplicationController
  def index
    @appliances = Appliance.all
    render json: @appliances.to_json, status: :ok
  end

  def show
    @song = Appliance.find(params[:id])
    render status: 200, json: @appliance.to_json
  end

end
