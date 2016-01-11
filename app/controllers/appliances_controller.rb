class AppliancesController < ApplicationController
  def index
    @appliances = Appliances.all
    render json: @appliances.to_json, status: :ok
  end
end
