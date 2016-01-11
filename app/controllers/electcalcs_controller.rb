class ElectcalcController < ApplicationController
  def index
    @electcalcs = Electcalc.all
    @appliances = Appliance.all

    render json: @electcalcs.to_json, status: :ok
  end

  def create
    @electcalc = Electcalc.new(electcalc_params)

    if @grumble.save
    render json: @electcalc.to_json, status: :created
    else
      render json: @electcalc.errors, status: :unprocessable_entity
    end
  end

  private
  def electcalc_params
    params.require(:electcalc).permit(:state, :avg_cost)
  end

end
