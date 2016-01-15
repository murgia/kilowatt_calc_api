class ElectcalcsController < ApplicationController
  def index
    # add total energy and total cost to electcalc JSON
    out = []
    Electcalc.all.each do |e|
      energy = e.total_energy
      cost = e.total_cost
      e = e.as_json
      e[:total_energy] = energy
      e[:total_cost] = cost
      out.push(e)
    end
    render json: out, status: :ok
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
