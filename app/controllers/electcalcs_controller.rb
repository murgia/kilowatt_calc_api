class ElectcalcsController < ApplicationController
  def index
    @electcalcs = Electcalc.all
    @appliances = Appliance.all

    render json: @electcalcs.to_json, status: :ok
  end

  def show
    @electcalc = Electcalc.find(params[:id])
    render status: 200, json: @electcalc.to_json
  end

  def create
    elect_data = params["elect_data"]
    electcalc = Electcalc.create({name: elect_data["name"], state: elect_data["state"], avg_cost: elect_data["avg_cost"]})
    render json: electcalc.to_json, status: :created
  end


  def createEstimates
    estimate_params = params["estimates"]
    estimates = []
    estimate_params.each do |i, value|
      estimates << value
    end

    json_estimates = []
    electcalc = Electcalc.find(params[:id])
    estimates.each do |estimate|
      json_estimates << Estimate.create({appliance_id:  estimate["appliance_id"], electcalc: electcalc, quantity: estimate["quantity"]})
    end
      render json: json_estimates.to_json, status: :created
  end

  private
  def electcalc_params
    params.require(:electcalc).permit(:state, :avg_cost, :name)
  end

end
